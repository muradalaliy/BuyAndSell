import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextBodyAuth extends StatelessWidget {
  const CustomTextBodyAuth({super.key, required this.textBody});
  final String textBody;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 25),
      child: Text(
       textBody.tr,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
