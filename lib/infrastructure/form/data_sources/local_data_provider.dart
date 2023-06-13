import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

import '../../../common/exceptions/exceptions.dart';
import '../../../common/firestore/firestore_client.dart';
import '../../../domain/form/form_failure.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../../../domain/form/form_model.dart';

@injectable
class FormLocalDataProvider {
  final FirestoreClient firestoreClient;

  FormLocalDataProvider(this.firestoreClient);

  Future<Either<FormFailure, Unit>> save(
      {required String fullname,
      required String email,
      required String phone}) async {
    final Map<String, String> params = {
      'fullname': fullname,
      'email': email,
      'phone': phone,
      'created_at': DateTime.now().toString()
    };

    try {
      List formModelDto =
          await firestoreClient.get(params: 'phone', value: phone);
      if (formModelDto.isNotEmpty) {
        List<FormModel> listData =
            formModelDto.map((e) => e.toDomain() as FormModel).toList();
        List<FormModel> outputList =
            listData.where((o) => o.phone == phone).toList();
        if (outputList.isNotEmpty) {
          return left(const FormFailure.phoneAlreadyInUse());
        } else {
          List<FormModel> listData =
              formModelDto.map((e) => e.toDomain() as FormModel).toList();
          final listModel = listData
              .map((f) =>
                  {"created_at": f.created_at, "fullname": f.fullname, "email": f.email, "phone": f.phone})
              .toList();

          listModel.add(params);
          String response =
              await firestoreClient.add(data: {'data': listModel});
          if (response == 'success') {
            return right(unit);
          } else {
            return left(const FormFailure.appException(
                AppException.unexpectedException()));
          }
        }
      } else {
        List<dynamic> listModel = [params];
        String response = await firestoreClient.add(data: {'data': listModel});
        if (response == 'success') {
          return right(unit);
        } else {
          return left(const FormFailure.appException(
              AppException.unexpectedException()));
        }
      }
    } catch (e) {
      print(e);
      return left(
          const FormFailure.appException(AppException.badNetworkException()));
    }
  }
}
