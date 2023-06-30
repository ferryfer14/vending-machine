import 'package:freezed_annotation/freezed_annotation.dart';

part 'sensor_category_model.freezed.dart';

@freezed
class SensorCategoryModel with _$SensorCategoryModel {
  const SensorCategoryModel._();

  const factory SensorCategoryModel({
    int? id,
    String? name
  }) = _SensorCategoryModel;

  factory SensorCategoryModel.empty() => const SensorCategoryModel(id: 0, name: '');
}
