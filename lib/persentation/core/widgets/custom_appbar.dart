import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:standart_project/persentation/core/utils/border/border_radius.dart';
import 'package:standart_project/persentation/core/utils/spacing/padding.dart';
import 'package:standart_project/persentation/core/utils/styles/colors.dart';
import 'package:standart_project/persentation/core/utils/styles/text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {Key? key,
      this.title,
      this.iconLeading,
      this.titleStyle,
      this.colorAppbar,
      this.iconAction})
      : super(key: key);

  final String? title;
  final Color? colorAppbar;
  final TextStyle? titleStyle;
  final IconButton? iconLeading;
  final List<Widget>? iconAction;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: colorAppbar ?? primaryColor,
      elevation: 3,
      shadowColor: black.withOpacity(.15),
      title: Text(title ?? '', style: titleStyle ?? ts16White600),
      actions: iconAction,
      leading: iconLeading,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
