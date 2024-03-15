import 'package:get/get.dart';

import '../../../core/constant/imageasset.dart';
import '../../model/onboardingmodel.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "Choose Product".tr,
      body:
          // "We Have a 100k Product , Choose \n Your Product From  Our \n E-commerce Shop".tr,
          "Welcome to our application for selling\n used items Browse through our wide \nselection of used items".tr,
      image: AppImageAsset.onBoardingImageOne),
  OnBoardingModel(
      title: "Easy And Safe".tr,
      body:
          "Post your ad and save time \n and effort in selling used items".tr,
      image: AppImageAsset.onBoardingImageTwo),
  OnBoardingModel(
      title: "Ease of communication".tr,
      body:
          // "The order can be tracked at every stage \n until it reaches you".tr,
          "Engage in direct communication \n with buyers  and enjoy a personalized and\neffective selling experience".tr,
      image: AppImageAsset.onBoardingImageThree),
  
];
