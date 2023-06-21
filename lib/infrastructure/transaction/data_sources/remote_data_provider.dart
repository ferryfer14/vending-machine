import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:standart_project/app_constant.dart';
import 'package:standart_project/common/api/api_client.dart';
import 'package:standart_project/common/exceptions/exceptions.dart';
import 'package:standart_project/domain/auth/auth_failure.dart';
import 'package:standart_project/domain/auth/auth_model.dart';
import 'package:standart_project/env.dart';
import 'package:standart_project/infrastructure/auth/profile_dtos.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import '../../../domain/transaction/transaction_failure.dart';
import '../transaction_dtos.dart';

@injectable
class TransactionRemoteDataProvider {
  final ApiClient apiClient;
  final SharedPreferences prefs;
  final Env env;

  TransactionRemoteDataProvider(
    this.apiClient,
    this.prefs,
    this.env,
  );

  final _state = const Uuid().v1();

  Future<Either<TransactionFailure, int>> submit({required String id}) async {
    List<Map<String, dynamic>> listData = [];
    final Map<String, dynamic> params = {"id": id, "amount": 1};
    listData.add(params);
    final token = prefs.getString(vAccessToken);
    try {
      final response = await apiClient.post(
        "${env.baseUrl}v1/transaction/buy",
        data: listData,
        headers: {
          'Accept': 'application/json',
          'Authorization': 'bearer $token',
        },
        followRedirects: false,
        validateStatus: (status) => status! < 500,
      );

      if (response.statusCode == 200) {
        return right(response.data['id']);
      } else if (response.statusCode == 400) {
        return left(const TransactionFailure.unexpectedError());
      } else if (response.statusCode == 401) {
        return left(const TransactionFailure.appException(
            AppException.unauthenticatedException()));
      }
    } catch (e) {
      return left(const TransactionFailure.appException(
          AppException.badNetworkException()));
    }
    return left(const TransactionFailure.unexpectedError());
  }

  Future<Either<TransactionFailure, Unit>> drop(
      {required int slot_id,
      required int transaction_id,
      required String slot}) async {
    final Map<String, int> params = {"slot": int.parse(slot)};
    try {
      final response = await apiClient.post(
        "${env.baseUrlVM}api/drop",
        data: params,
        headers: {
          'Accept': 'application/json',
        },
        contentType: 'application/json',
        followRedirects: false,
        validateStatus: (status) => status! < 500,
      );

      print(response);
      if (response.statusCode == 200) {
        return right(unit);
      } else if (response.statusCode == 201) {
        return left(const TransactionFailure.unexpectedError());
      }
    } catch (e) {
      print(e);
      return left(const TransactionFailure.appException(
          AppException.badNetworkException()));
    }
    return left(const TransactionFailure.unexpectedError());
  }

  Future<Either<TransactionFailure, Unit>> success(
      {required int transaction_id,
      required int slot_id,
      required int status}) async {
    List<Map<String, dynamic>> listData = [];
    final Map<String, dynamic> params = {
      "slot_id": slot_id,
      "quantity": 1,
      "quantity_success": status == 1 ? 1 : 0,
      "quantity_error": status == 1 ? 0 : 1
    };
    listData.add(params);
    final Map<String, dynamic> data = {
      "transaction_id": transaction_id,
      "detail": listData
    };
    final token = prefs.getString(vAccessToken);
    try {
      final response = await apiClient.post(
        "${env.baseUrl}v1/vending/success",
        data: data,
        headers: {
          'Accept': 'application/json',
          'Authorization': 'bearer $token',
        },
        followRedirects: false,
        validateStatus: (status) => status! < 500,
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else if (response.statusCode == 400) {
        return left(const TransactionFailure.unexpectedError());
      } else if (response.statusCode == 401) {
        return left(const TransactionFailure.appException(
            AppException.unauthenticatedException()));
      }
    } catch (e) {
      return left(const TransactionFailure.appException(
          AppException.badNetworkException()));
    }
    return left(const TransactionFailure.unexpectedError());
  }


  Future<Either<TransactionFailure, TransactionModelDto>> checkStatusTransaction(
      {required int id}) async {
    final token = prefs.getString(vAccessToken);
    try {
      final response = await apiClient.get(
        "${env.baseUrl}v1/transaction/$id",
        headers: {
          'Accept': 'application/json',
          'Authorization': 'bearer $token',
        },
        followRedirects: false,
        validateStatus: (status) => status! < 500,
      );

      if (response.statusCode == 200) {
        return right(TransactionModelDto.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return left(  TransactionFailure.appException(
            AppException.unexpectedException(
                errorMessage: response.data['error'])));
      } else if (response.statusCode == 401) {
        return left(const TransactionFailure.appException(
            AppException.unauthenticatedException()));
      }
    } catch (e) {
      return left(const TransactionFailure.appException(
          AppException.badNetworkException()));
    }
    return left(const TransactionFailure.unexpectedError());
  }
}
