import 'package:flutter/material.dart';

class ButtonArrow extends StatelessWidget {
  const ButtonArrow({super.key, required this.onTap, required this.icon});
  final VoidCallback onTap;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Center(child: InkWell(onTap: onTap, child: icon));
  }
}
