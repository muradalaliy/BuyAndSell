import 'package:flutter/material.dart';

class CustomHeaderText extends StatelessWidget {
  const CustomHeaderText({
    super.key,
    required this.textheader,
    this.fontSize = 16,
    this.color = Colors.black,
    this.fontWeight = FontWeight.bold,
  });

  final String textheader;
  final double fontSize;

  final Color color;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      textheader,
      style:
          TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
