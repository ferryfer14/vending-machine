import 'package:standart_project/persentation/core/utils/spacing/padding.dart';
import 'package:flutter/material.dart';

class ButtonCircle extends StatelessWidget {
  const ButtonCircle(
      {Key? key,
      required this.onTap,
      required this.icon,
      required this.backgroundColor})
      : super(key: key);

  final VoidCallback onTap;
  final Icon icon;
  final backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: backgroundColor, // <-- Button color
      ),
      child: icon,
    );
  }
}
