import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:standart_project/persentation/core/functions/button_icon_leading.dart';
import 'package:standart_project/persentation/core/functions/currency_format.dart';

import '../../../app_constant.dart';
import '../../../application/product/product_bloc.dart';
import '../../../domain/product/product_model.dart';
import '../../core/utils/border/border_radius.dart';
import '../../core/utils/spacing/padding.dart';
import '../../core/utils/spacing/sizebox.dart';
import '../../core/utils/styles/colors.dart';
import '../../core/utils/styles/text_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'list_cart.dart';

class PopupCart extends StatelessWidget {
  const PopupCart(
      {super.key,
      required this.listProduct,
      required this.totalPrice,
      required this.onPay,
      required this.loading});
  final List<ProductModel> listProduct;
  final int totalPrice;
  final VoidCallback onPay;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: white,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          siboh8,
          Row(
            children: [
              sibow24,
              Expanded(
                child: Text(AppLocalizations.of(context)!.cart,
                    textAlign: TextAlign.left, style: ts14Black500),
              ),
              SizedBox(
                  height: 15,
                  width: 15,
                  child: InkWell(
                    onTap: () {
                      context.router.pop();
                    },
                    child: const Icon(Icons.clear,
                        size: 15, color: secondaryColor),
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
          ...List.generate(listProduct.length, (index) {
            return ListCart(
                loading: loading,
                productModel: listProduct[index],
                onAdd: () {
                  context.read<ProductBloc>().add(ProductEvent.addAmount(
                      listProduct[index], listProduct[index].amount! + 1));
                },
                onMin: () {
                  context.read<ProductBloc>().add(ProductEvent.addAmount(
                      listProduct[index], listProduct[index].amount! - 1));
                },
                onDelete: () {
                  context
                      .read<ProductBloc>()
                      .add(ProductEvent.addAmount(listProduct[index], 0));
                });
          }),
          Container(
            padding: padall4,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppLocalizations.of(context)!.total_purchase,
                            style: ts14second500),
                        siboh8,
                        Text(
                          AppLocalizations.of(context)!
                              .items_choosen(listProduct.length.toString()),
                          style: ts14Black600,
                        )
                      ]),
                  Container(
                    padding: padall8,
                    decoration: BoxDecoration(
                        color: neutralColor, borderRadius: borderRadius16),
                    alignment: Alignment.center,
                    child: Text(
                      CurrencyFormat.convertToIdr(totalPrice, 0),
                      style: ts14primary500,
                    ),
                  )
                ]),
          ),
          siboh8,
          Container(
            padding: padall4,
            child: ButtonIconLeading(
                onTap: listProduct.isEmpty ? () {} : onPay,
                height: 40,
                widget: loading
                    ? LoadingAnimationWidget.inkDrop(color: white, size: 10)
                    : Image.asset(
                        '${vAssetPng}qris.png',
                        height: 20,
                      ),
                title: AppLocalizations.of(context)!.pay_qris,
                titleStyle: ts14White500,
                sibow: sibow4),
          ),
          siboh24
        ]));
  }
}
