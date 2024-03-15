import 'dart:developer';

import 'package:BuyAndSell/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ProductScreenController extends GetxController {
  goToPageProductList();
  goToAddProduct();
  goToAddImage();
  goToEditProduct();
}

class ProductScreenControllerImp extends ProductScreenController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  // TextEditingController typecontroller = TextEditingController();
  TextEditingController pricecontroller = TextEditingController();
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();

  String name = '';
  String id = '';
  @override
  goToPageProductList() {
    Get.toNamed(AppRoute.productList);
  }

  @override
  goToAddProduct() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      //  print("valid");
    } else {
      // print("not");
    }
  }

  @override
  void onInit() {
    // typecontroller = TextEditingController();
    name = Get.arguments['name'].toString();
    id = Get.arguments['id'].toString();
    pricecontroller = TextEditingController();
    log(id);
    super.onInit();
  }

  @override
  void dispose() {
    // typecontroller.dispose();
    pricecontroller.dispose();
    super.dispose();
  }

  @override
  goToAddImage() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      // Get.toNamed(AppRoute.imageGrid);
      Get.toNamed(AppRoute.imageGrid, arguments: {
        'title': titlecontroller.text,
        'description': descriptioncontroller.text,
        'address': addresscontroller.text,
        'pric': pricecontroller.text,
        'category_id': id,
      });
    } else {}
  }

  @override
  goToEditProduct() {
    Get.toNamed(AppRoute.editProducts);
  }
}
