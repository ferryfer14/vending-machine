import 'package:flutter_svg/svg.dart';
import 'package:standart_project/persentation/core/utils/border/border_radius.dart';
import 'package:standart_project/persentation/core/utils/spacing/padding.dart';
import 'package:standart_project/persentation/core/utils/spacing/sizebox.dart';
import 'package:standart_project/persentation/core/utils/styles/colors.dart';
import 'package:standart_project/persentation/core/utils/styles/text_style.dart';
import 'package:flutter/material.dart';

class ButtonIconLeading extends StatelessWidget {
  const ButtonIconLeading(
      {Key? key,
      this.onTap,
      this.title,
      this.titleStyle,
      this.widget,
      this.widgetBot,
      this.sibow,
      this.sibowBot,
      this.mainAxisAlignment,
      this.color,
      this.height,
      this.border,
      this.borderRadius,
      this.width})
      : super(key: key);

  final VoidCallback? onTap;
  final String? title;
  final Color? color;
  final Widget? widget;
  final Widget? widgetBot;
  final Widget? sibow, sibowBot;
  final MainAxisAlignment? mainAxisAlignment;
  final TextStyle? titleStyle;
  final double? height, width;
  final Border? border;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padall8,
        // margin: const EdgeInsets.only(bottom: 16),
        alignment: Alignment.center,
        width: width ?? double.infinity,
        height: height,
        decoration: BoxDecoration(
          color: color ?? primaryColor,
          border: border,
          borderRadius: borderRadius ?? borderRadius12,
        ),
        child: Row(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
          children: [
            widget ?? const SizedBox(),
            sibow ?? const SizedBox(),
            Text(title ?? '', style: titleStyle ?? ts14White600),
            sibowBot ?? const SizedBox(),
            widgetBot ?? const SizedBox()
          ],
        ),
      ),
    );
  }
}
