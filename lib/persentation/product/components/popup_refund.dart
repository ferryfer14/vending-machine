import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:standart_project/domain/transaction/transaction_model.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../../app_constant.dart';
import '../../../application/product/product_bloc.dart';
import '../../../domain/transaction/refund_model.dart';
import '../../core/functions/currency_format.dart';
import '../../core/functions/functions.dart';
import '../../core/utils/border/border_radius.dart';
import '../../core/utils/spacing/padding.dart';
import '../../core/utils/spacing/sizebox.dart';
import '../../core/utils/styles/colors.dart';
import '../../core/utils/styles/text_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PopupRefund extends StatelessWidget {
  const PopupRefund(
      {super.key,
      required this.transactionModel,
      required this.refundModel,
      required this.onClose});
  final TransactionModel transactionModel;
  final RefundModel refundModel;
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
                  child: Text(AppLocalizations.of(context)!.refund_request,
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
            Center(
                child: Text(
              AppLocalizations.of(context)!.scan_refund,
              style: ts36Black600,
            )),
            siboh24,
            Center(
                child: Container(
              padding: padall16,
              decoration: const BoxDecoration(color: neutralColor),
              child: Column(
                children: [
                  QrImage(
                    data: refundModel.qrString!.getOrElse(''),
                    version: QrVersions.auto,
                    size: 320,
                    gapless: false,
                  ),
                  siboh8,
                  Text(
                    '${transactionModel.transaction_code}',
                    style: ts24Black600,
                  )
                ],
              ),
            )),
            siboh24,
            Center(
                child: Text(AppLocalizations.of(context)!.note_refund,
                    textAlign: TextAlign.center, style: ts24Secondary400)),
            siboh24,
          ],
        ));
  }
}
