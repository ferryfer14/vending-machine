import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:standart_project/routes/app_router.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../../app_constant.dart';
import '../../../application/product/product_bloc.dart';
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

class PopupSuccess extends StatelessWidget {
  const PopupSuccess({super.key, required this.onClose});
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
            siboh8,
            Center(
                child: Text(
              AppLocalizations.of(context)!.success_vm,
              style: ts16Black600,
              textAlign: TextAlign.center,
            )),
            siboh8,
            Center(
                child: Text(
              AppLocalizations.of(context)!.note_success,
              style: ts14Black500,
              textAlign: TextAlign.center,
            )),
            siboh16,
            const Center(
                child: Icon(
              Icons.check_circle_rounded,
              color: greenCheckColor,
              size: 90,
            )),
            siboh16,
            Center(
                child: Countdown(
                    seconds: 10,
                    interval: const Duration(milliseconds: 1000),
                    build: (BuildContext context, double time) {
                      return Container(
                          height: 70,
                          padding: padall16,
                          child: ButtonIconLeading(
                            onTap: () => context.router
                                .replaceAll([const CaraouselRoute()]),
                            sibow: sibow16,
                            widget: const Icon(Icons.home_outlined,
                                color: primaryColor, size: 16),
                            title: "Will be close (${time.toInt()}s)",
                            titleStyle: ts14primary500,
                            color: white,
                            border: Border.all(color: primaryColor, width: 1),
                          ));
                    },
                    onFinished: () {
                      context.router.replaceAll([const CaraouselRoute()]);
                    })),
          ],
        ));
  }
}
