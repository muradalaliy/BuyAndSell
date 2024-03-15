import 'dart:developer';

import 'package:BuyAndSell/controller/category/categorycontroller.dart';
import 'package:get/get.dart';

abstract class CategoryDetailsController extends GetxController {}

class CategoryDetailsControllerImp extends CategoryDetailsController {
  List product = [];
  List catpro = [];
  List imgJson = [];
  String? iduser;
  String imgDetils = '';
  late Product promodel;

  datarg() {
    catpro.add(Get.arguments['catpro']);
    product.addAll(catpro.first['products']);

    log(catpro.toString());
    update();
  }

  @override
  void onInit() {
    datarg();

    super.onInit();
  }
}
