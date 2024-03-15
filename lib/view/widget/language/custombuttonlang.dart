import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class CustomButtonLang extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const CustomButtonLang({super.key, required this.textbutton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
          color: AppColor.primaryColor,
          textColor: Colors.white,
          onPressed: onPressed,
          child: Text(
            textbutton.tr,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )),
    );
  }
}
