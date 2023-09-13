import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:standart_project/domain/product/product_model.dart';
import 'package:standart_project/persentation/core/components/button_icon_leading.dart';
import 'package:standart_project/persentation/core/functions/currency_format.dart';

import '../../../app_constant.dart';

import '../../core/components/button_circle.dart';
import '../../core/utils/spacing/padding.dart';
import '../../core/utils/spacing/sizebox.dart';
import '../../core/utils/styles/colors.dart';
import '../../core/utils/styles/text_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PopupDetail extends StatelessWidget {
  const PopupDetail(
      {super.key,
      required this.productModel,
      required this.amount,
      required this.onAdd,
      required this.onMin,
      required this.onCart});
  final ProductModel productModel;
  final int amount;
  final VoidCallback onCart;
  final VoidCallback onAdd;
  final VoidCallback onMin;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            siboh8,
            Row(
              children: [
                sibow24,
                Expanded(
                  child: Text(AppLocalizations.of(context)!.detail_product,
                      textAlign: TextAlign.left, style: ts14Black500),
                ),
                SizedBox(
                    height: 20,
                    width: 20,
                    child: InkWell(
                      onTap: () {
                        context.router.pop();
                      },
                      child: const Icon(Icons.clear,
                          size: 16, color: secondaryColor),
                    )),
                sibow16,
              ],
            ),
            siboh8,
            const Divider(
              height: 5,
              thickness: 2,
              color: backgroundImage,
            ),
            siboh8,
            Container(
                padding: padall4,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Container(
                                  padding: padright16,
                                  decoration: const BoxDecoration(
                                    color: white,
                                  ),
                                  height: 80,
                                  child: Image.network(
                                    productModel.image!,
                                  ))),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(productModel.name!, style: ts14Black600),
                              siboh16,
                              Text(
                                  CurrencyFormat.convertToIdr(
                                      productModel.price, 0),
                                  style: ts14Black600),
                              siboh16,
                              Text(
                                  AppLocalizations.of(context)!
                                      .quantity_of_goods,
                                  style: ts12second500),
                              siboh24,
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ButtonCircle(
                                    onTap: amount == 0 ? () {} : onMin,
                                    icon: const Icon(Icons.remove,
                                        color: black, size: 15),
                                    backgroundColor: amount == 0
                                        ? buttonCircle.withOpacity(0.3)
                                        : buttonCircle,
                                  ),
                                  sibow8,
                                  Text(amount.toString(), style: ts20Black500),
                                  sibow8,
                                  ButtonCircle(
                                    onTap: amount == productModel.stock
                                        ? () {}
                                        : onAdd,
                                    icon: const Icon(Icons.add,
                                        color: white, size: 15),
                                    backgroundColor:
                                        amount == productModel.stock
                                            ? primaryColor.withOpacity(0.3)
                                            : primaryColor,
                                  )
                                ],
                              ),
                              siboh24,
                              ButtonIconLeading(
                                onTap: onCart,
                                height: 40,
                                widget: SvgPicture.asset(
                                    "${vAssetSvg}add-cart.svg",
                                    color: white,
                                    width: 20,
                                    height: 20),
                                color: primaryColor,
                                sibow: sibow4,
                                title: AppLocalizations.of(context)!.add_cart,
                                titleStyle: ts14White500,
                              ),
                            ],
                          ))
                        ],
                      ),
                      siboh16,
                      Text(AppLocalizations.of(context)!.product_description,
                          style: ts12second500),
                      siboh16,
                      Text(productModel.description!, style: ts14second500),
                      siboh24,
                      Text(AppLocalizations.of(context)!.supported_e_wallet,
                          style: ts12black500),
                      siboh16,
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "${vAssetPng}Shopeepay.png",
                              height: 60,
                            ),
                            Image.asset(
                              "${vAssetPng}Ovo.png",
                              height: 60,
                            ),
                            Image.asset(
                              "${vAssetPng}Linkaja.png",
                              height: 60,
                            ),
                          ]),
                      siboh4,
                    ]))
          ],
        ));
  }
}
