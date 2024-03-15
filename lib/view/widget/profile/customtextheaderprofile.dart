import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomTextHeaderProfile extends StatelessWidget {
  const CustomTextHeaderProfile({super.key, required this.text, required this.textNumber});
  final String text;
   final String textNumber;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
         textNumber.tr,
          style:const TextStyle(fontSize: 20, fontWeight: FontWeight.bold , color: Colors.black),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
        text.tr,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ],
    );
  }
}
