import 'package:BuyAndSell/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class CustomButtonAuth extends StatelessWidget {
  final String buttontext;
  final void Function()? onPressed;
  const CustomButtonAuth({super.key, required this.buttontext, this.onPressed});

  @override
  Widget build(BuildContext context) {
     
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(horizontal: 13),
        onPressed: onPressed,
         color: AppColor.darkGreen.withOpacity(0.7),
         
         textColor: Colors.white,
         child:  Text(buttontext.tr , style:const TextStyle(fontWeight: FontWeight.bold , fontSize: 16)
      ),
      ),
    );
  }
}
