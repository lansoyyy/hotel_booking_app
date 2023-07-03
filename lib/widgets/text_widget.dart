import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  late String text;
  late double fontSize;
  late Color? color;
  late String? fontFamily;
  late TextDecoration? decoration;

  TextWidget(
      {super.key,
      this.decoration,
      required this.text,
      required this.fontSize,
      this.color = Colors.black,
      this.fontFamily = 'Regular'});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: decoration,
          fontSize: fontSize,
          color: color,
          fontFamily: fontFamily),
    );
  }
}
