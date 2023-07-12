import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  late String text;
  late double fontSize;
  late Color? color;
  late String? fontFamily;
  late TextDecoration? decoration;
  final int? maxlines;
  final TextOverflow? overflow;
  final FontWeight? fw;

  TextWidget(
      {super.key,
      this.decoration,
      this.maxlines,
      this.fw,
      this.overflow,
      required this.text,
      required this.fontSize,
      this.color = Colors.black,
      this.fontFamily = 'Regular'});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxlines,
      overflow: overflow,
      style: TextStyle(
          fontWeight: fw,
          decoration: decoration,
          fontSize: fontSize,
          color: color,
          fontFamily: fontFamily),
    );
  }
}
