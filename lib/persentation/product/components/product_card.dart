import 'package:flutter/material.dart';
import 'package:standart_project/domain/product/product_model.dart';
import 'package:standart_project/persentation/core/functions/currency_format.dart';

import '../../core/functions/button_field.dart';
import '../../core/utils/border/border_radius.dart';
import '../../core/utils/spacing/padding.dart';
import '../../core/utils/styles/colors.dart';
import '../../core/utils/styles/text_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.productModel,
      required this.onPopDetail,
      required this.addCart});
  final ProductModel productModel;
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
                          height: 70,
                          decoration: const BoxDecoration(
                            color: white,
                          ),
                          child: Image.network(
                            '${productModel.image}',
                          )),
                      Container(
                          color: white,
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              left: 4, right: 4, bottom: 8, top: 4),
                          child: Text('${productModel.name}',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: ts12black500)),
                      Expanded(
                          child: productModel.stock! <= 0
                              ? PrimaryButton(
                                  onTap: () {},
                                  color: buttonDisable,
                                  title: AppLocalizations.of(context)!
                                      .out_of_stock,
                                  titleStyle: ts12white500,
                                  borderRadius: borderRadius0,
                                )
                              : (productModel.stock == productModel.amount
                                  ? PrimaryButton(
                                      onTap: () {},
                                      color: buttonDisable,
                                      title: AppLocalizations.of(context)!
                                          .out_of_stock,
                                      titleStyle: ts12white500,
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
                                                        productModel.price, 0),
                                                    style: ts12black500))),
                                        Container(
                                            color: primaryColor,
                                            child: IconButton(
                                              onPressed: addCart,
                                              icon: const Icon(
                                                Icons.add_shopping_cart,
                                              ),
                                              color: white,
                                              iconSize: 15,
                                            ))
                                      ],
                                    )))
                    ],
                  ),
                  Positioned(
                      top: 5,
                      right: 5,
                      child: productModel.amount == 0
                          ? const SizedBox()
                          : Container(
                              width: 15,
                              height: 15,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: primaryColor),
                              child: Center(
                                child: Text(
                                  productModel.amount.toString(),
                                  style: ts12white500,
                                ),
                              ),
                            ))
                ]))));
  }
}
