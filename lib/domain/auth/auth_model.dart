import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/core/failures.dart';

part 'auth_model.freezed.dart';

@freezed
class AuthModel with _$AuthModel {
  const AuthModel._();

  const factory AuthModel({
    required String access_token,
    required String token_type,
    required String refresh_token,
    required int expires_in,
    required String scope,
    required String jti,
  }) = _AuthModel;

  factory AuthModel.empty() => const AuthModel(
        access_token: '',
        token_type: '',
        refresh_token: '',
        expires_in: 0,
        scope: '',
        jti: '',
      );
}
