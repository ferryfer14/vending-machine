import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:standart_project/domain/transaction/transaction_model.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../../app_constant.dart';
import '../../../application/product/product_bloc.dart';
import '../../core/functions/currency_format.dart';
import '../../core/functions/functions.dart';
import '../../core/utils/border/border_radius.dart';
import '../../core/utils/spacing/padding.dart';
import '../../core/utils/spacing/sizebox.dart';
import '../../core/utils/styles/colors.dart';
import '../../core/utils/styles/text_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PopupQris extends StatelessWidget {
  const PopupQris(
      {super.key, required this.transactionModel, required this.onClose});
  final TransactionModel transactionModel;
  final VoidCallback onClose;

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
                  child: Text(AppLocalizations.of(context)!.qr_code,
                      textAlign: TextAlign.left, style: ts32Black600),
                ),
                SizedBox(
                    height: 50,
                    width: 50,
                    child: InkWell(
                      onTap: onClose,
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
            Countdown(
                seconds: 150,
                interval: const Duration(milliseconds: 1000),
                build: (BuildContext context, double time) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      sibow8,
                      Expanded(
                          child: FAProgressBar(
                        currentValue: time / 150 * 100,
                        size: 20,
                        backgroundColor: neutralColor,
                        progressColor: primaryColor,
                      )),
                      sibow16,
                      Text(Functions.formatedTime(time.toInt()),
                          style: ts24Primary400),
                      sibow8,
                      const Icon(Icons.timer_outlined,
                          color: primaryColor, size: 24),
                      sibow8
                    ],
                  );
                },
                onFinished: () {
                  context
                      .read<ProductBloc>()
                      .add(const ProductEvent.started(isRefresh: true));
                  context.router.pop();
                }),
            siboh24,
            Center(
                child: Container(
              padding: padall16,
              decoration: const BoxDecoration(color: neutralColor),
              child: Column(
                children: [
                  Image.asset('${vAssetPng}IconQris.png'),
                  siboh8,
                  QrImage(
                    data: transactionModel.payment!.qr_string!,
                    version: QrVersions.auto,
                    size: 320,
                    gapless: false,
                  ),
                  siboh8,
                  Text('NMID : ${transactionModel.payment!.external_id}')
                ],
              ),
            )),
            siboh16,
            Center(
                child: Container(
                    width: 300,
                    padding: padall24,
                    decoration: BoxDecoration(
                        color: neutralColor, borderRadius: borderRadius16),
                    alignment: Alignment.center,
                    child: Text(
                      CurrencyFormat.convertToIdr(
                          transactionModel.payment!.amount, 0),
                      style: ts24Primary400,
                    ))),
            siboh24,
            Center(
                child: Text(AppLocalizations.of(context)!.note_qr,
                    textAlign: TextAlign.center, style: ts24Secondary400)),
            siboh24,
          ],
        ));
  }
}
