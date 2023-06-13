// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/form/form_model.dart';
import '../../domain/product/page_model.dart';
import '../../domain/product/slot_model.dart';

part 'form_dtos.freezed.dart';
part 'form_dtos.g.dart';

@freezed
class FormModelDto with _$FormModelDto {
  const FormModelDto._();

  const factory FormModelDto({
    @JsonKey(name: 'created_at') String? created_at,
    @JsonKey(name: 'fullname') String? fullname,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
  }) = _FormModelDto;

  factory FormModelDto.fromJson(Map<String, dynamic> json) =>
      _$FormModelDtoFromJson(json);

  FormModel toDomain() {
    return FormModel(
      created_at: created_at ?? '',
      fullname: fullname ?? '',
      email: email ?? '',
      phone: phone ?? '',
    );
  }
}
