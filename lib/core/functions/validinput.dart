import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return " not valid username".tr;
    }
    if (type == "email") {
      if (!GetUtils.isEmail(val)) {
        return " not valid email".tr;
      }
    }

    if (type == "phone") {
      if (!GetUtils.isPhoneNumber(val)) {
        return " not valid phone".tr;
      }
    }
    //   if (type == "text") {
    //   if (!GetUtils.isnu(val)) {
    //     return "not valid text";
    //   }
    // }
  }
  if (val.isEmpty) {
    return " Please complete required field".tr;
  }
  if (val.length < min) {
    return " can't be less than".tr+" $min";
  }
  if (val.length > max) {
    return " can't be large than".tr +" $max";
  }
}
