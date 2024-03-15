
import 'package:BuyAndSell/core/constant/color.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
   final String text;
  final Color color;
  final VoidCallback onTap;
  final Color? colorBorder;
  final Color? textColor;
  final double height;
 const CustomButton({
    required this.onTap,
    this.color = AppColor.darkGreen,
    required this.text,
    this.colorBorder,
    this.textColor,
    this.height = 56,
    Key? key,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
            border: colorBorder == null
                ? null
                : Border.all(color: colorBorder!, width: 2),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontFamily: "Inter",
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}