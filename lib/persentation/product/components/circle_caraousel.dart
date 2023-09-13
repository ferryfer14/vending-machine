import 'package:flutter/material.dart';

class CircleCaraousel extends StatelessWidget {
  const CircleCaraousel({super.key, required this.onTap, required this.color});
  final VoidCallback onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 10,
        height: 10,
        margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
