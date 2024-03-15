
import 'package:get/get.dart';

abstract class VerfiyCodeSignUpController extends GetxController {
  checkeCode();
  goToSuccessSignUp(String veriftionCodesignup);
}

class VerfiyCodeSignUpControllerImp extends VerfiyCodeSignUpController {

  
  String? email;
  @override
  checkeCode() {}

  
  List data = [];
  @override
  goToSuccessSignUp(String veriftionCodesignup) async {

    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
