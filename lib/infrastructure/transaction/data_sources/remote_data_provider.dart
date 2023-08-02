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
import 'package:standart_project/infrastructure/transaction/sensor_dtos.dart';
import 'package:uuid/uuid.dart';

import '../../../domain/transaction/transaction_failure.dart';
import '../refund_dtos.dart';
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

  Future<Either<TransactionFailure, Unit>> drop(
      {required String slotName}) async {
    final Map<String, int> params = {"slot": int.parse(slotName)};
    try {
      final response = await apiClient.post(
        "${env.baseUrlVM}api/drop",
        // "https://nominatim.openstreetmap.org/reverse?format=jsonv2&lat=-6.30406&lon=106.718955",
        data: params,
        headers: {
          'Accept': 'application/json',
          "Access-Control-Allow-Origin":
              "*", // Required for CORS support to work
          "Access-Control-Allow-Credentials":
              true, // Required for cookies, authorization headers with HTTPS
        },
        contentType: 'application/json',
        followRedirects: false,
        validateStatus: (status) => status! < 500,
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else if (response.statusCode == 201) {
        return left(const TransactionFailure.unexpectedError());
      }
    } catch (e) {
      return left(const TransactionFailure.unexpectedError());
    }
    return left(const TransactionFailure.unexpectedError());
  }

  Future<Either<TransactionFailure, RefundModelDto>> finish(
      {required List<SensorModelDto> listSensorModelDto,
      required String transactionCode,
      required int transactionId}) async {
    final Map<String, dynamic> data = {
      "vending": env.username,
      "transaction_id": transactionId,
      "type": "Transaction",
      "trx": transactionCode,
      "sensor": listSensorModelDto
    };
    final token = prefs.getString(vAccessToken);
    try {
      final response = await apiClient.post(
        "${env.baseUrl}v1/sensor/vending",
        data: data,
        headers: {
          'Accept': 'application/json',
          'Authorization': 'bearer $token',
        },
        followRedirects: false,
        validateStatus: (status) => status! < 500,
      );

      if (response.statusCode == 200) {
        return right(RefundModelDto.fromJson(response.data));
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

  Future<Either<TransactionFailure, List<SensorModelDto>>> getSensor() async {
    final token = prefs.getString(vAccessToken);
    try {
      final response = await apiClient.get(
        "${env.baseUrl}v1/vending/sensor/${env.username}",
        headers: {
          'Accept': 'application/json',
          'Authorization': 'bearer $token',
        },
        followRedirects: false,
        validateStatus: (status) => status! < 500,
      );

      if (response.statusCode == 200) {
        final items = (response.data as List)
            .map((e) => SensorModelDto.fromJson(e as Map<String, dynamic>))
            .toList();
        return right(items);
      } else if (response.statusCode == 400) {
        return left(TransactionFailure.appException(
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

  Future<Either<TransactionFailure, TransactionModelDto>>
      checkStatusTransaction({required int id}) async {
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
        return left(TransactionFailure.appException(
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
