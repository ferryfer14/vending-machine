import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_model.freezed.dart';

@freezed
class FormModel with _$FormModel {
  const FormModel._();

  const factory FormModel(
      {String? created_at,
      String? fullname,
      String? email,
      String? phone}) =
      _FormModel;

  factory FormModel.empty() =>
      FormModel(created_at: '', fullname: '', email: '', phone: '');
}
