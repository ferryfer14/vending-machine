// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/product/product_model.dart';
import 'package:standart_project/domain/product/vending_model.dart';
import 'package:standart_project/infrastructure/product/product_dtos.dart';
import 'package:standart_project/infrastructure/product/slot_dtos.dart';
import 'package:standart_project/infrastructure/product/vending_dtos.dart';
import '../../common/functions/app_functions.dart';
import '../../domain/product/page_model.dart';
import '../../domain/product/slot_model.dart';

part 'page_dtos.freezed.dart';
part 'page_dtos.g.dart';

@freezed
class PageModelDto with _$PageModelDto {
  const PageModelDto._();

  const factory PageModelDto({
    @JsonKey(name: 'content') List<SlotModelDto>? slotDto,
    @JsonKey(name: 'total_pages') int? total_pages,
    @JsonKey(name: 'last') bool? last,
  }) = _PageModelDto;

  factory PageModelDto.fromJson(Map<String, dynamic> json) =>
      _$PageModelDtoFromJson(json);

  PageModel toDomain() {
    return PageModel(
      slot: slotDto != null
          ? slotDto!.map((e) => e.toDomain()).toList()
          : [SlotModel.empty()],
      total_pages: total_pages ?? 0,
      last: last ?? true,
    );
  }
}
