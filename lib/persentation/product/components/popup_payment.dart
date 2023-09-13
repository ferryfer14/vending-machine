import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:standart_project/persentation/product/components/payment_method.dart';
import 'package:standart_project/routes/app_router.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../../app_constant.dart';
import '../../../application/product/product_bloc.dart';
import '../../core/components/button_icon_leading.dart';
import '../../core/functions/currency_format.dart';
import '../../core/functions/functions.dart';
import '../../core/utils/border/border_radius.dart';
import '../../core/utils/spacing/padding.dart';
import '../../core/utils/spacing/sizebox.dart';
import '../../core/utils/styles/colors.dart';
import '../../core/utils/styles/text_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PopupPayment extends StatelessWidget {
  const PopupPayment({super.key, required this.onClose});

  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
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
                  const Expanded(
                    child: Text("Add Nominal Payment",
                        textAlign: TextAlign.left, style: ts16Black500),
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
              Text(AppLocalizations.of(context)!.total_purchase,
                  style: ts14second500),
              siboh4,
              Center(
                  child: Container(
                padding: padall8,
                decoration: BoxDecoration(
                    color: neutralColor, borderRadius: borderRadius16),
                alignment: Alignment.center,
                child: Text(
                  CurrencyFormat.convertToIdr(state.totalPrice, 0),
                  style: ts24Red600,
                ),
              )),
              siboh32,
              const Text("Nominal Payment", style: ts14second500),
              siboh4,
              Center(
                  child: Container(
                padding: padall8,
                decoration: BoxDecoration(
                    color: neutralColor, borderRadius: borderRadius16),
                alignment: Alignment.center,
                child: Text(
                  CurrencyFormat.convertToIdr(state.nominalPayment, 0),
                  style: ts16Prim600,
                ),
              )),
              siboh16,
              PaymentMethod(),
              siboh16,
              Center(
                  child: Container(
                      height: 70,
                      padding: padall16,
                      child: ButtonIconLeading(
                        onTap: () => context
                            .read<ProductBloc>()
                            .add(const ProductEvent.addTransaction()),
                        sibow: sibow16,
                        widget: const Icon(Icons.payment,
                            color: primaryColor, size: 16),
                        title: "Pay",
                        titleStyle: ts14primary500,
                        color: white,
                        border: Border.all(color: primaryColor, width: 1),
                      ))),
            ],
          ));
    });
  }
}
