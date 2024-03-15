import 'dart:convert';

import 'package:BuyAndSell/linkapi.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  final isLoading = false.obs;

  Future register({
 required   String name,
  required  String email,
   required String password,
   required String phone,
   required String image,
  }) async {
    try {
      isLoading.value = true;
      var data = {
        "name": name,
        "email": email,
        "password": password,
        "phone_number": phone,
        "image":image,
      };

      var response = await http.post(
        Uri.parse(AppLink.server + 'register'),
        headers: {'Accept': 'application/json'},
        body: data,
      );

      if (response.statusCode == 200) {
        isLoading.value = false;
        debugPrint(json.decode(response.body));
      } else {
        isLoading.value = false;
        debugPrint(json.decode(response.body));
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
