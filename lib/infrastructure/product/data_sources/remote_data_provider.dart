import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:standart_project/domain/product/product_failure.dart';

import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;

import '../../../app_constant.dart';
import '../../../common/api/api_client.dart';
import '../../../common/exceptions/exceptions.dart';
import '../../../env.dart';
import '../product_dtos.dart';

@injectable
class ProductRemoteDataProvider {
  final ApiClient apiClient;
  final SharedPreferences prefs;
  final Env env;

  ProductRemoteDataProvider(
    this.apiClient,
    this.prefs,
    this.env,
  );
  Future<Database> init() async {
    io.Directory applicationDirectory =
        await getApplicationDocumentsDirectory();

    String dbPathEnglish = path.join(applicationDirectory.path, "sqlite.db");

    bool dbExistsEnglish = await io.File(dbPathEnglish).exists();

    if (!dbExistsEnglish) {
      // Copy from asset
      ByteData data =
          await rootBundle.load(path.join("assets/sql", "sqlite.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes written
      await io.File(dbPathEnglish).writeAsBytes(bytes, flush: true);
    }

    return await openDatabase(dbPathEnglish);
  }

  Future<Either<ProductFailure, List<ProductModelDto>>> load() async {
    try {
      return init().then((db) async {
        List<Map<String, dynamic>> data = await db.query('product');
        if (data.isNotEmpty) {
          final items = data.map((e) => ProductModelDto.fromJson(e)).toList();
          return right(items);
        }
        return left(const ProductFailure.emptyList());
      });
    } catch (e) {
      return left(const ProductFailure.noConnection());
    }
  }

  Future<Either<ProductFailure, Unit>> submitCart(
      {required List<ProductModelDto> productModelDto,
      required int price,
      required int quantity}) async {
    try {
      return init().then((db) async {
        int id = 0;
        try {
          id = await db.insert(
            'transaction',
            {
              'price': price,
              'quantity': quantity,
              'created_at': DateTime.now().toString()
            },
            conflictAlgorithm: ConflictAlgorithm.replace,
          );
          if (id != 0) {
            productModelDto.forEach((model) async {
              await db.rawUpdate('''
                  UPDATE product 
                  SET stock = stock-?
                  WHERE id = ?
                  ''', [model.amount, model.id]);

              await db.insert(
                'data_transaction',
                {
                  'transaction_id': id,
                  'product_id': model.id,
                  'base_price': model.price,
                  'quantity': model.amount,
                  'created_at': DateTime.now().toString()
                },
                conflictAlgorithm: ConflictAlgorithm.replace,
              );
            });
            return right(unit);
          }
          return left(const ProductFailure.unexpectedError());
        } catch (e) {
          return left(const ProductFailure.appException(
              AppException.unexpectedException(
                  errorMessage: "Internal Server error")));
        }
      });
    } catch (e) {
      return left(const ProductFailure.appException(
          AppException.badNetworkException()));
    }
  }
}
