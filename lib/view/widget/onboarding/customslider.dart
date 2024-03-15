import 'package:BuyAndSell/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  onBoardingList[i].image!,
                  height: Get.width/1.5,
                  // width: 200,
                  // height: 200,
                  fit: BoxFit.fill,
                 
                ),
                 const SizedBox(
                  height: 60,
                ),
                Text(onBoardingList[i].title!.tr,
                    style:const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),),
                const SizedBox(
                  height: 18,
                ),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBoardingList[i].body!.tr,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    )),
              ],
            ));
  }
}
