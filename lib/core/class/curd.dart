import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;

import '../functions/checkinternet.dart';
import 'statusrequest.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    Map<String, String> mapToken = {"Authorization": ""};
    // log(myToken.toString());
    // log('message');

    if (await checkInternet()) {
      var response =
          await http.post(Uri.parse(linkurl), body: data, headers: mapToken);
      print(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responsebody = jsonDecode(response.body);

        return Right(responsebody);
      } else if (response.statusCode == 302) {
        // getToken('1');

        return const Left(StatusRequest.needLogin);
      } else {
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailure);
    }
  }

  Future<Either<StatusRequest, Map>> postDataimg(
    String linkurl,
    Map<String, dynamic> data,
    File imageFile,
    File imageFile1,
    File imageFile2,
    File imageFile3,
    File imageFile4,
    File imageFile5,
  ) async {
    Map<String, String> mapToken = {"Authorization": ""};

    if (await checkInternet()) {
      var request = http.MultipartRequest('POST', Uri.parse(linkurl));

      request.files
          .add(await http.MultipartFile.fromPath('image', imageFile.path));
      request.files
          .add(await http.MultipartFile.fromPath('image1', imageFile1.path));
      request.files
          .add(await http.MultipartFile.fromPath('image2', imageFile2.path));
      request.files
          .add(await http.MultipartFile.fromPath('image3', imageFile3.path));
      request.files
          .add(await http.MultipartFile.fromPath('image4', imageFile4.path));
      request.files
          .add(await http.MultipartFile.fromPath('image5', imageFile5.path));

      request.fields
          .addAll(data.map((key, value) => MapEntry(key, value.toString())));

      request.headers.addAll(mapToken);

      var response = await request.send();
      // var responseBody = await response.stream.bytesToString();

      // var responseJson = jsonDecode(responseBody);
      // log(responseJson['message']);
      // if (response.statusCode == 422) {}

      if (response.statusCode == 200 || response.statusCode == 201) {
        var responseBody = await response.stream.bytesToString();
        var responseJson = jsonDecode(responseBody);
        return Right(responseJson);
      } else if (response.statusCode == 302) {
        return const Left(StatusRequest.needLogin);
      } else {
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailure);
    }
  }

  Future<Either<StatusRequest, Map>> postDataimgUser(
    String linkurl,
    Map<String, dynamic> data,
    File imageFile,
  ) async {
    Map<String, String> mapToken = {"Authorization": ""};

    if (await checkInternet()) {
      var request = http.MultipartRequest('POST', Uri.parse(linkurl));

      request.files
          .add(await http.MultipartFile.fromPath('image', imageFile.path));

      request.fields
          .addAll(data.map((key, value) => MapEntry(key, value.toString())));

      request.headers.addAll(mapToken);

      var response = await request.send();
      // var responseBody = await response.stream.bytesToString();

      // var responseJson = jsonDecode(responseBody);
      // log(responseJson['message']);
      // if (response.statusCode == 422) {}

      if (response.statusCode == 200 || response.statusCode == 201) {
        var responseBody = await response.stream.bytesToString();
        var responseJson = jsonDecode(responseBody);
        return Right(responseJson);
      } else if (response.statusCode == 302) {
        return const Left(StatusRequest.needLogin);
      } else {
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailure);
    }
  }

  Future<Either<StatusRequest, Map>> getData(String linkurl) async {
    if (await checkInternet()) {
      var response = await http.get(Uri.parse(linkurl));
      // print(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responsebody = jsonDecode(response.body);
        // print(responsebody);

        return Right(responsebody);
      } else {
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailure);
    }
  }
}
