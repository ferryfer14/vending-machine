import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:standart_project/domain/transaction/transaction_model.dart';
import 'package:standart_project/routes/app_router.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../../app_constant.dart';
import '../../../application/product/product_bloc.dart';
import '../../../application/transaction/transaction_bloc.dart';
import '../../../domain/transaction/refund_model.dart';
import '../../core/functions/button_icon_leading.dart';
import '../../core/functions/currency_format.dart';
import '../../core/functions/functions.dart';
import '../../core/utils/border/border_radius.dart';
import '../../core/utils/spacing/padding.dart';
import '../../core/utils/spacing/sizebox.dart';
import '../../core/utils/styles/colors.dart';
import '../../core/utils/styles/text_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PopupGame extends StatelessWidget {
  const PopupGame({super.key, required this.onClose, required this.url});
  final VoidCallback onClose;
  final String url;

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
            siboh64,
            Center(
                child: Text(
              AppLocalizations.of(context)!.title_game,
              style: ts36Black600,
              textAlign: TextAlign.center,
            )),
            siboh32,
            Center(child: Image.asset("${vAssetPng}Games.png")),
            siboh64,
            Container(
                decoration: const BoxDecoration(color: buttonCircle),
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("WHAT ARE YOU WAITING FOR? LET'S PLAY NOW!",
                          style: ts24Black600),
                      siboh8,
                      const Text(
                          "Play the spinning wheel game by clicking the button below and you will have the chance to win a Free Item prize from us!",
                          style: ts20TextColor400),
                      siboh8,
                      Center(
                          child: SizedBox(
                              height: 80,
                              child: ButtonIconLeading(
                                onTap: () {
                                  // context.router
                                  //     .replaceAll([WebviewRoute(url: url)]);
                                },
                                sibow: sibow16,
                                widget: const Icon(Icons.play_circle_outline,
                                    color: white, size: 36),
                                title: "Play The Game",
                                titleStyle: ts24White400,
                                color: primaryColor,
                                border:
                                    Border.all(color: primaryColor, width: 1),
                              ))),
                      siboh16,
                      Center(
                          child: Countdown(
                              seconds: 10,
                              interval: const Duration(milliseconds: 1000),
                              build: (BuildContext context, double time) {
                                return SizedBox(
                                    height: 80,
                                    child: ButtonIconLeading(
                                      onTap: () {
                                        context.router.replaceAll(
                                            [const CaraouselRoute()]);
                                      },
                                      sibow: sibow16,
                                      widget: const Icon(Icons.home_outlined,
                                          color: primaryColor, size: 36),
                                      title: "Will be close (${time.toInt()}s)",
                                      titleStyle: ts24Primary400,
                                      color: white,
                                      border: Border.all(
                                          color: primaryColor, width: 1),
                                    ));
                              },
                              onFinished: () {
                                context.router
                                    .replaceAll([const CaraouselRoute()]);
                              })),
                    ])),
            siboh16
          ],
        ));
  }
}
