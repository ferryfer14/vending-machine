import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:standart_project/persentation/core/functions/button_icon_leading.dart';
import 'package:standart_project/persentation/core/functions/currency_format.dart';

import '../../../app_constant.dart';
import '../../../application/product/product_bloc.dart';
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

import 'list_cart.dart';

class PopupCart extends StatelessWidget {
  const PopupCart(
      {super.key, required this.listSlot, required this.totalPrice});
  final List<SlotModel> listSlot;
  final int totalPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: white,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          siboh32,
          Row(
            children: [
              sibow24,
              Expanded(
                child: Text(AppLocalizations.of(context)!.cart,
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
          ...List.generate(listSlot.length, (index) {
            return ListCart(
                slotModel: listSlot[index],
                onAdd: () {
                  context.read<ProductBloc>().add(ProductEvent.addAmount(
                      listSlot[index], listSlot[index].amount! + 1));
                },
                onMin: () {
                  context.read<ProductBloc>().add(ProductEvent.addAmount(
                      listSlot[index], listSlot[index].amount! - 1));
                },
                onDelete: () {
                  context
                      .read<ProductBloc>()
                      .add(ProductEvent.addAmount(listSlot[index], 0));
                });
          }),
          Container(
            padding: padall16,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppLocalizations.of(context)!.total_purchase,
                            style: ts24Secondary400),
                        siboh8,
                        Text(
                          AppLocalizations.of(context)!
                              .items_choosen(listSlot.length.toString()),
                          style: ts24Black700,
                        )
                      ]),
                  Container(
                    padding: padall24,
                    decoration: BoxDecoration(
                        color: neutralColor, borderRadius: borderRadius16),
                    alignment: Alignment.center,
                    child: Text(
                      CurrencyFormat.convertToIdr(totalPrice, 0),
                      style: ts24Primary400,
                    ),
                  )
                ]),
          )
        ]));
  }
}
