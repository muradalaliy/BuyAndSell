import 'package:BuyAndSell/controller/onboarding_controller.dart';
import 'package:BuyAndSell/view/widget/onboarding/customslider.dart';
import 'package:BuyAndSell/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/onboarding/custombutton.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());

    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Expanded(
          flex: 4,
          child: CustomSliderOnBoarding(),
        ),
        Expanded(
            flex: 1,
            child: Column(
              children: [
                CustomDotControllerOnBoarding(),
                Spacer(
                  flex: 2,
                ),
                CustomButtonOnBoarding(),
              ],
            ))
      ]),
    ));
  }
}
