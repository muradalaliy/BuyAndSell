import 'package:BuyAndSell/core/constant/routes.dart';
import 'package:BuyAndSell/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("onboarding") == "1") {
      if (myServices.sharedPreferences.getString("login") == null) {
        return const RouteSettings(name: AppRoute.login);
      } else {
        return const RouteSettings(name: AppRoute.home);
      }
    }
    return null;
  }
}
