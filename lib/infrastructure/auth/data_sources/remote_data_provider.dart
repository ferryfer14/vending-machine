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

import '../auth_dtos.dart';

@injectable
class AuthRemoteDataProvider {
  final ApiClient apiClient;
  final SharedPreferences prefs;
  final Env env;

  AuthRemoteDataProvider(
    this.apiClient,
    this.prefs,
    this.env,
  );

  final _state = const Uuid().v1();

  Future<Either<AuthFailure, Unit>> login() async {
    FormData form = FormData.fromMap({
      "username": env.username,
      "password": env.password,
      "client_id": env.clientId,
      "client_secret": env.clientSecret,
      "grant_type": 'password',
    });

    try {
      final response = await apiClient.post(
        "${env.baseUrl}oauth/token",
        data: form,
        headers: {
          'Accept': 'application/json',
        },
        followRedirects: false,
        validateStatus: (status) => status! < 500,
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final token = AuthModelDto.fromJson(data);
        prefs.setString(vTokenModel, jsonEncode(token));
        prefs.setString(vAccessToken, data['access_token']);
        prefs.setString(vRefreshToken, data['refresh_token']);

        return right(unit);
      } else if (response.statusCode == 400) {
        return left(const AuthFailure.invalidUsernameAndPassword());
      }
    } catch (e) {
      return left(
          const AuthFailure.appException(AppException.badNetworkException()));
    }
    return left(const AuthFailure.invalidUsernameAndPassword());
  }

  Future<Either<AuthFailure, Unit>> updateTokenFirebase(
      String tokenFirebase) async {
    final token = prefs.getString(vAccessToken);
    final tokenFirebase = prefs.getString(vFirebaseToken) ?? '';
    if (token != '') {
      final Map<String, String> params = {
        'firebase_token': tokenFirebase,
      };

      try {
        final response = await apiClient.put(
          '${env.baseUrl}v1/profile/firebasetoken',
          data: params,
          headers: {
            'Accept': 'application/json',
            'Authorization': 'bearer $token',
          },
        );

        debugPrint("refres : ${response.statusCode}");
        if (response.statusCode == 200) {
          return right(unit);
        }
      } catch (e) {
        return left(
            AuthFailure.appException(AppException.internalServerException()));
      }
    }
    return left(const AuthFailure.appException(
        AppException.unexpectedException(errorMessage: '')));
  }

  Future<Either<AuthFailure, Unit>> refreshToken() async {
    final refresh_token = prefs.getString(vRefreshToken);
    final token = prefs.getString(vAccessToken);

    FormData form = FormData.fromMap({
      "client_id": env.clientId,
      "client_secret": env.clientSecret,
      "grant_type": "refresh_token",
      "refresh_token": refresh_token,
    });

    try {
      final response = await apiClient.post(
        env.baseUrl + 'oauth/token',
        data: form,
        headers: {
          'Accept': 'application/json',
          'Authorization': 'bearer $token',
          'Accept-Language': prefs.getString(vLang) ?? 'en'
        },
      );

      debugPrint("refres : ${response.statusCode}");
      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final token = AuthModelDto.fromJson(data);
        prefs.setString(vTokenModel, jsonEncode(token));
        prefs.setString(vAccessToken, data['access_token']);
        prefs.setString(vRefreshToken, data['refresh_token']);

        return right(unit);
      }
    } on AppException catch (exception) {
      return left(AuthFailure.appException(exception));
    }
    return left(const AuthFailure.appException(
        AppException.unexpectedException(errorMessage: '')));
  }

  Future<Either<AppException, ProfileModelDto>> loadProfile() async {
    final token = prefs.getString(vAccessToken);
    try {
      var response = await apiClient.get(
        '${env.baseUrl}v1/profile/my',
        headers: {
          'Accept': 'application/json',
          'Authorization': 'bearer $token',
          'Accept-Language': prefs.getString(vLang) ?? 'en'
        },
        followRedirects: false,
        validateStatus: (status) => status! < 500,
      );

      if (response.statusCode == 200) {
        final items = (response.data) as Map<String, dynamic>;

        return right(ProfileModelDto.fromJson(items));
      } else if (response.statusCode == 401) {
        return left(const AppException.unauthenticatedException());
      } else if (response.statusCode == 403) {
        return left(const AppException.unauthenticatedException());
      } else {
        return left(const AppException.empty(errorMessage: 'error load '));
      }
    } catch (e) {
      return left(const AppException.badNetworkException());
    }
  }
}
