import 'package:BuyAndSell/core/constant/apptheme.dart';
import 'package:BuyAndSell/core/services/services.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  ThemeData appTheme = themeEnglish;

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    appTheme = langcode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPreflang = myServices.sharedPreferences.getString("lang");
    if (sharedPreflang == "ar") {
      language = const Locale("ar");
      appTheme = themeArabic;
    } else if (sharedPreflang == "en") {
      language = const Locale("en");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
