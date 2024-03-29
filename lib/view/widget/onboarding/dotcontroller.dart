import 'package:BuyAndSell/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: ((controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(microseconds: 900),
                          width: controller.currentPage == index ? 15 : 5,
                          height: 6,
                          decoration: BoxDecoration(
                              color: AppColor.curved,
                              borderRadius: BorderRadius.circular(10)),
                        ))
              ],
            )));
  }
}
