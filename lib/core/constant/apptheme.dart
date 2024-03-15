import 'package:BuyAndSell/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  backgroundColor: AppColor.backgroundcolor,
  fontFamily: "PlayfairDisplay",
  textTheme: TextTheme(
    headline1: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 16, color: AppColor.black),
    headline2: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 16, color: AppColor.black),
    bodyText1: TextStyle(
        height: 2,
        color: Colors.grey.shade700,
        fontWeight: FontWeight.bold,
        fontSize: 16),
    bodyText2: TextStyle(
      color: Color(0xFFBBBBBB),
      fontFamily: "Muli",
    ),

    // TextStyle(
    //   height: 2,

    //   fontWeight: FontWeight.bold,
    //   color: Color.fromARGB(255, 158, 157, 157),
    //   fontSize: 16,
  
    // ),
  ),
);

ThemeData themeArabic = ThemeData(
  backgroundColor: AppColor.backgroundcolor,
  fontFamily: "Cairo",
  textTheme: TextTheme(
    headline1: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
    headline2: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 16, color: AppColor.black),
    bodyText1: TextStyle(
        height: 2,
        color: Colors.grey.shade600,
        fontWeight: FontWeight.bold,
        fontSize: 12),
    bodyText2: TextStyle(
      height: 2,
      color: Colors.grey.shade600,
      fontSize: 14,
    ),
  ),
);
