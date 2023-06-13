import 'package:freezed_annotation/freezed_annotation.dart';

part 'caraousel_model.freezed.dart';

@freezed
class CaraouselModel with _$CaraouselModel {
  const CaraouselModel._();

  const factory CaraouselModel({int? id, String? images}) = _CaraouselModel;

  factory CaraouselModel.empty() => CaraouselModel(id: 0, images: '');
}
