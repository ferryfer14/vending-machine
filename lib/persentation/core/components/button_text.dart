import 'package:flutter/material.dart';

import '../../core/utils/border/border_radius.dart';
import '../../core/utils/spacing/padding.dart';
import '../../core/utils/styles/text_style.dart';

class ButtonText extends StatelessWidget {
  const ButtonText(
      {Key? key,
      required this.onTap,
      required this.title,
      required this.backgroundColor,
      this.borderRadius,
      this.contentPadding,
      this.titleStyle = ts12black})
      : super(key: key);
  final String title;
  final TextStyle titleStyle;
  final BorderRadius? borderRadius;
  final Color backgroundColor;
  final EdgeInsets? contentPadding;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: borderRadius ?? borderRadius4,
            color: backgroundColor),
        padding: contentPadding ?? padall4,
        child: Text(
          title,
          style: titleStyle,
        ),
      ),
    );
  }
}
