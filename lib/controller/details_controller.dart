import 'dart:developer';

import 'package:BuyAndSell/controller/category/categorycontroller.dart';
import 'package:get/get.dart';

abstract class DetailsController extends GetxController {}

class DetailsControllerImp extends DetailsController {
  List product = [];
  List productdetail = [];
  List imgJson = [];
  String? iduser;
  String imgDetils = '';
  late Product promodel;

  datarg() {
    productdetail.add(Get.arguments['promodel']);

    log(productdetail.toString());
    update();
  }

  @override
  void onInit() {
    datarg();

    super.onInit();
  }
}
