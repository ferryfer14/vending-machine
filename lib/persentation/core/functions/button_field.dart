import 'package:standart_project/persentation/core/utils/border/border_radius.dart';
import 'package:standart_project/persentation/core/utils/styles/colors.dart';
import 'package:standart_project/persentation/core/utils/styles/text_style.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.onTap,
    this.title,
    this.color,
    this.heigh,
    this.width,
    this.titleStyle,
    this.borderRadius
  }) : super(key: key);

  final VoidCallback? onTap;
  final String? title;
  final Color? color;
  final double? heigh,width;
  final TextStyle? titleStyle;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // margin: const EdgeInsets.only(bottom: 16),
        alignment: Alignment.center,
        width: width ?? double.infinity,
        height: heigh,
        decoration: BoxDecoration(
          color: color ?? primaryColor,
          borderRadius: borderRadius ?? borderRadius12,
        ),
        child: Text(title ?? 'Sign In', style: titleStyle ?? ts14White600),
      ),
    );
  }
}
