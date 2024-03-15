import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFormSell extends StatelessWidget {
  final String? hinttext;
  final String? labletext;
  final IconData? iconData;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;
  final bool? enabled;
  final TextStyle? hintStyle;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;

  const CustomTextFormSell({
    super.key,
    this.hinttext,
    this.labletext,
    this.iconData,
    required this.mycontroller,
    required this.valid,
    required this.isNumber,
    this.obscureText,
    this.onTapIcon,
    this.enabled,
    this.hintStyle = const TextStyle(fontSize: 16),
    this.maxLines = 1,
    this.minLines = 1, this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        enabled: enabled,
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
        controller: mycontroller,
        maxLines: maxLines,
        minLines: minLines,
        maxLength: maxLength,
        obscureText: obscureText == null || obscureText == false ? false : true,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: hintStyle,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(
                  labletext!.tr,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                )),
            suffixIcon: InkWell(
              onTap: onTapIcon,
              child: Icon(iconData),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
