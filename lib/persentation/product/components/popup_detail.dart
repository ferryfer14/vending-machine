import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:standart_project/persentation/core/functions/button_icon_leading.dart';
import 'package:standart_project/persentation/core/functions/currency_format.dart';

import '../../../app_constant.dart';
import '../../../domain/product/slot_model.dart';
import '../../core/functions/button_circle.dart';
import '../../core/functions/button_field.dart';
import '../../core/functions/button_icon_bottom.dart';
import '../../core/utils/border/border_radius.dart';
import '../../core/utils/spacing/padding.dart';
import '../../core/utils/spacing/sizebox.dart';
import '../../core/utils/styles/colors.dart';
import '../../core/utils/styles/text_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PopupDetail extends StatelessWidget {
  PopupDetail(
      {super.key,
      required this.slotModel,
      required this.amount,
      required this.onAdd,
      required this.onMin,
      required this.onCart});
  SlotModel slotModel;
  int amount;
  VoidCallback onCart;
  VoidCallback onAdd;
  VoidCallback onMin;

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
            siboh32,
            Row(
              children: [
                sibow24,
                Expanded(
                  child: Text(AppLocalizations.of(context)!.detail_product,
                      textAlign: TextAlign.left, style: ts32Black600),
                ),
                SizedBox(
                    height: 50,
                    width: 50,
                    child: InkWell(
                      onTap: () {
                        context.router.pop();
                      },
                      child: const Icon(Icons.clear,
                          size: 36, color: secondaryColor),
                    )),
                sibow16,
              ],
            ),
            siboh24,
            const Divider(
              height: 10,
              thickness: 5,
              color: backgroundImage,
            ),
            siboh24,
            Container(
                padding: padall16,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Container(
                                  decoration: const BoxDecoration(
                                    color: white,
                                  ),
                                  height: 400,
                                  child: Image.network(
                                    slotModel.product!.image!,
                                  ))),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(slotModel.product!.name!,
                                  style: ts32Black600),
                              siboh16,
                              Text(
                                  CurrencyFormat.convertToIdr(
                                      slotModel.price, 0),
                                  style: ts36Black600),
                              siboh16,
                              Text(
                                  AppLocalizations.of(context)!
                                      .quantity_of_goods,
                                  style: ts24Secondary400),
                              siboh24,
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ButtonCircle(
                                    onTap: amount == 0 ? () {} : onMin,
                                    icon: const Icon(Icons.remove,
                                        color: black, size: 50),
                                    backgroundColor: amount == 0
                                        ? buttonCircle.withOpacity(0.3)
                                        : buttonCircle,
                                  ),
                                  sibow32,
                                  Text(amount.toString(), style: ts40Black500),
                                  sibow32,
                                  ButtonCircle(
                                    onTap: amount == slotModel.stock
                                        ? () {}
                                        : onAdd,
                                    icon: const Icon(Icons.add,
                                        color: white, size: 50),
                                    backgroundColor: amount == slotModel.stock
                                        ? primaryColor.withOpacity(0.3)
                                        : primaryColor,
                                  )
                                ],
                              ),
                              siboh24,
                              ButtonIconLeading(
                                onTap: onCart,
                                height: 75,
                                widget: SvgPicture.asset(
                                    "${vAssetSvg}add-cart.svg",
                                    color: white,
                                    width: 40,
                                    height: 40),
                                color: primaryColor,
                                sibow: sibow24,
                                title: AppLocalizations.of(context)!.add_cart,
                                titleStyle: ts24White400,
                              ),
                              siboh24,
                              ButtonIconLeading(
                                onTap: onCart,
                                height: 75,
                                widget: SvgPicture.asset("${vAssetSvg}cart.svg",
                                    color: primaryColor, width: 40, height: 40),
                                border: Border.all(color: primaryColor),
                                color: white,
                                sibow: sibow24,
                                sibowBot: sibow24,
                                title: AppLocalizations.of(context)!.view_cart,
                                widgetBot: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: primaryColor),
                                  child: Center(
                                    child: Text(
                                      slotModel.amount.toString(),
                                      style: ts20White500,
                                    ),
                                  ),
                                ),
                                titleStyle: ts24Primary400,
                              )
                            ],
                          ))
                        ],
                      ),
                      siboh16,
                      Text(AppLocalizations.of(context)!.product_description,
                          style: ts24Secondary400),
                      siboh16,
                      Text(slotModel.product!.description!,
                          style: ts24Secondary400),
                      siboh24,
                      Text(AppLocalizations.of(context)!.supported_e_wallet,
                          style: ts24Black600),
                      siboh16,
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("${vAssetPng}Shopeepay.png"),
                            Image.asset("${vAssetPng}Ovo.png"),
                            Image.asset("${vAssetPng}Linkaja.png"),
                            Image.asset("${vAssetPng}Gopay.png"),
                          ]),
                      siboh32,
                    ]))
          ],
        ));
  }
}
