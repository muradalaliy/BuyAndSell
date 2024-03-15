import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextTitleAuth extends StatelessWidget {
  const CustomTextTitleAuth({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline2,
    );
  }
}
