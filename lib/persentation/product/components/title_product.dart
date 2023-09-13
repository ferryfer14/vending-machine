import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:standart_project/persentation/core/functions/currency_format.dart';

import '../../../app_constant.dart';
import '../../core/components/button_icon_leading.dart';
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
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Expanded(
          flex: 3,
          child: Text(AppLocalizations.of(context)!.our_item,
              style: ts16Black600)),
      Expanded(
          child: badges.Badge(
              badgeContent: Text(totalCart.toString(), style: ts12primary500),
              badgeStyle: const badges.BadgeStyle(
                shape: badges.BadgeShape.circle,
                badgeColor: white,
                borderSide: BorderSide(color: primaryColor, width: 2),
                padding: padall8,
              ),
              position: badges.BadgePosition.topEnd(top: -15, end: -8),
              showBadge: totalCart > 0 ? true : false,
              child: ButtonIconLeading(
                onTap: onTap,
                height: 30,
                widget: SvgPicture.asset("${vAssetSvg}cart.svg",
                    color: white, width: 30, height: 30),
                color: primaryColor,
                sibow: sibow4,
                title: AppLocalizations.of(context)!.cart,
                titleStyle: ts12white500,
              )))
    ]);
  }
}
