import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/product/product_model.dart';
import 'package:standart_project/domain/product/slot_model.dart';
import 'package:standart_project/domain/product/vending_model.dart';

part 'page_model.freezed.dart';

@freezed
class PageModel with _$PageModel {
  const PageModel._();

  const factory PageModel(
      {List<SlotModel>? slot,
      int? total_pages,
      bool? last}) = _PageModel;

  factory PageModel.empty() =>
      PageModel(slot: [], total_pages: 0, last: true);
}
