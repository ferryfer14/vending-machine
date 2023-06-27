import 'package:freezed_annotation/freezed_annotation.dart';

part 'sensor_model.freezed.dart';

@freezed
class SensorModel with _$SensorModel {
  const SensorModel._();

  const factory SensorModel({
    String? code,
    String? description,
    bool? value,
    int? slot,
    int? slotName,
  }) = _SensorModel;

  factory SensorModel.empty() => SensorModel(
      code: '', description: '', value: false, slot: 0, slotName: 0);
}
