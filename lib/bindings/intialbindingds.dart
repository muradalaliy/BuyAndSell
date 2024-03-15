//فائدة عشان مانحتاج في كل مره انه نسوي instance من crud

//import 'package:BuyAndSell/controller/auth/signupcontroller.dart';
import 'package:BuyAndSell/controller/auth/signupcontroller.dart';

import 'package:get/get.dart';

import '../core/class/curd.dart';

class IntialBindings extends Bindings {
  @override
  void dependencies() {
    //كانت موجوده في ملف binding خليتها عشان اشوف هل بيكون في مشكلة
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    Get.put(Crud());

    //********************************************
    // Get.put(Crud());
  }
}
