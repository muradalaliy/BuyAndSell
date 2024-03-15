import 'dart:io';

import '../../../../core/class/curd.dart';
import '../../../../linkapi.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);

  login(String email, String password) async {
    var response = await crud
        .postData(AppLink.login, {"email": email, "password": password});
    return response.fold((l) => l, (r) => r);
  }

  logOutUser() async {
    var response = await crud.postData(AppLink.logout, {});
    return response.fold((l) => l, (r) => r);
  }

  signupData(
    String username,
    String password,
    String email,
    String phone,
    File img,
  ) async {
    var response = await crud.postDataimgUser(
        AppLink.register,
        {
          "name": username,
          "password": password,
          "email": email,
          "phone_namber": phone,
        },
        img);
    return response.fold((l) => l, (r) => r);
  }

  // updateData(String username, String password, String email, String phone,
  //     String gender) async {
  //   var response = await crud.postData(AppLink.update, {
  //     "name": username,
  //     // "password": password,
  //     "email": email,
  //     "phone": phone,
  //     "city_id": '1',
  //     "gender": gender,
  //   });
  //   return response.fold((l) => l, (r) => r);
  // }
}
