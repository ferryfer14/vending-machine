import 'package:flutter/material.dart';

class CircularText extends StatelessWidget {
  const CircularText(
      {super.key,
      required this.widgetText,
      required this.backColor,
      required this.progressColor});
  final Widget widgetText;
  final Color backColor;
  final Color progressColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                strokeWidth: 8,
                color: progressColor,
                backgroundColor: backColor,
              ),
            ),
          ),
          Center(child: widgetText),
        ],
      ),
    );
  }
}
