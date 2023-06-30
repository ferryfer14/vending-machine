import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/sensor/sensor_category_model.dart';

part 'sensor_model.freezed.dart';

@freezed
class SensorModel with _$SensorModel {
  const SensorModel._();

  const factory SensorModel({
    int? id,
    String? code,
    String? description,
    String? title,
    bool? value,
    SensorCategoryModel? sensorCategoryModel,
    int? slot,
    int? slotName,
  }) = _SensorModel;

  factory SensorModel.empty() => SensorModel(
      id: 0,
      title: '',
      sensorCategoryModel: SensorCategoryModel.empty(),
      code: '',
      description: '',
      value: false,
      slot: 0,
      slotName: 0);
}
