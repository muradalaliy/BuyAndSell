import 'dart:io';

import 'package:BuyAndSell/core/constant/routes.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/services/services.dart';

abstract class ProfileController extends GetxController {
  changeOption(bool lr);
  gotoSettings();
  gotonoaccount();
}

class ProfileControllerImp extends ProfileController {
  MyServices myServices = Get.find();

  late File image;
  String userimg = '';

  bool lr = false;
  @override
  changeOption(bool lr) {
    lr = false;
  }

  @override
  gotoSettings() {
    Get.toNamed(
      AppRoute.settings,
    );
  }

  @override
  void onInit() {
    // FirebaseMessaging.instance.getToken().then((value) {
    //   print(value);
    //   String? token = value;
    // });
//    name = myServices.sharedPreferences.getString("name").toString();
    userimg = myServices.sharedPreferences.getString("image").toString();
    super.onInit();
  }

  Future<void> getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      // Do something with the selected image file
    }
  }

  @override
  gotonoaccount() {
    Get.toNamed(AppRoute.noAccount);
  }
}
