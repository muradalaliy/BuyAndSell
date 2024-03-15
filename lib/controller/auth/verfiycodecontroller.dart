import 'package:BuyAndSell/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeController extends GetxController {
  checkeCode();
  goToResetPassword();
}

class VerfiyCodeControllerImp extends VerfiyCodeController {
  late String verifycode;
  @override
  checkeCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }

}
