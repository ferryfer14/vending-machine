import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:standart_project/persentation/core/functions/currency_format.dart';

import '../../../app_constant.dart';
import '../../../domain/product/slot_model.dart';
import '../../core/functions/button_field.dart';
import '../../core/functions/button_icon_bottom.dart';
import '../../core/functions/button_icon_leading.dart';
import '../../core/utils/border/border_radius.dart';
import '../../core/utils/spacing/padding.dart';
import '../../core/utils/spacing/sizebox.dart';
import '../../core/utils/styles/colors.dart';
import '../../core/utils/styles/text_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:badges/badges.dart' as badges;

class TitleProduct extends StatelessWidget {
  const TitleProduct({super.key, required this.totalCart, required this.onTap});
  final int totalCart;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Expanded(
          flex: 4,
          child: Text(AppLocalizations.of(context)!.our_item,
              style: ts32Black600)),
      Expanded(
          child: badges.Badge(
              badgeContent: Text(totalCart.toString(), style: ts24Primary400),
              badgeStyle: const badges.BadgeStyle(
                shape: badges.BadgeShape.circle,
                badgeColor: white,
                borderSide: BorderSide(color: primaryColor, width: 2),
                padding: padall16,
              ),
              position: badges.BadgePosition.topEnd(top: -20, end: -12),
              showBadge: totalCart > 0 ? true : false,
              child: ButtonIconLeading(
                onTap: onTap,
                height: 60,
                widget: SvgPicture.asset("${vAssetSvg}cart.svg",
                    color: white, width: 30, height: 30),
                color: primaryColor,
                sibow: sibow24,
                title: AppLocalizations.of(context)!.cart,
                titleStyle: ts24White400,
              )))
    ]);
  }
}
