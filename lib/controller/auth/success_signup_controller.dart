import 'package:BuyAndSell/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpPasswordController extends GetxController {
  goToPageLogin();
}

class SuccessSignUpPasswordControllerImp
    extends SuccessSignUpPasswordController {
  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
