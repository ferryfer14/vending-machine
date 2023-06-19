import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:standart_project/persentation/core/functions/currency_format.dart';

import '../../../app_constant.dart';
import '../../../domain/product/slot_model.dart';
import '../../core/functions/button_field.dart';
import '../../core/functions/button_icon_bottom.dart';
import '../../core/utils/border/border_radius.dart';
import '../../core/utils/spacing/padding.dart';
import '../../core/utils/styles/colors.dart';
import '../../core/utils/styles/text_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.slotModel,
      required this.onPopDetail,
      required this.addCart});
  final SlotModel slotModel;
  final VoidCallback onPopDetail;
  final VoidCallback addCart;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: padall8,
        decoration: BoxDecoration(
          color: white,
          border: Border.all(color: secondaryColor.withOpacity(0.2), width: 1),
          borderRadius: borderRadius16,
        ),
        child: InkWell(
            onTap: onPopDetail,
            child: ClipRRect(
                borderRadius: borderRadius16,
                child: Stack(children: [
                  Column(
                    children: [
                      Container(
                          height: 208,
                          decoration: const BoxDecoration(
                            color: white,
                          ),
                          child: Image.network(
                            '${slotModel.product!.image}',
                          )),
                      Container(
                          color: white,
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 32, top: 16),
                          child: Text('${slotModel.product!.name}',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: ts20Black500)),
                      Expanded(
                          child: slotModel.stock == 0
                              ? PrimaryButton(
                                  color: buttonDisable,
                                  title: AppLocalizations.of(context)!
                                      .out_of_stock,
                                  titleStyle: ts20White500,
                                  borderRadius: borderRadius0,
                                )
                              : (slotModel.stock == slotModel.amount
                                  ? PrimaryButton(
                                      color: buttonDisable,
                                      title: AppLocalizations.of(context)!
                                          .out_of_stock,
                                      titleStyle: ts20White500,
                                      borderRadius: borderRadius0,
                                    )
                                  : Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Expanded(
                                            child: Container(
                                                color: neutralColor,
                                                alignment: Alignment.center,
                                                child: Text(
                                                    CurrencyFormat.convertToIdr(
                                                        slotModel.price, 0),
                                                    style: ts20Black500))),
                                        Container(
                                            color: primaryColor,
                                            child: IconButton(
                                              onPressed: addCart,
                                              icon: const Icon(
                                                Icons.add_shopping_cart,
                                              ),
                                              color: white,
                                              iconSize: 30,
                                            ))
                                      ],
                                    )))
                    ],
                  ),
                  Positioned(
                      top: 5,
                      right: 5,
                      child: slotModel.amount == 0
                          ? const SizedBox()
                          : Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: primaryColor),
                              child: Center(
                                child: Text(
                                  slotModel.amount.toString(),
                                  style: ts20White500,
                                ),
                              ),
                            ))
                ]))));
  }
}
