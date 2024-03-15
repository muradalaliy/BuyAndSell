import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handingdatacontroller.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/home_data.dart';

class ImageGridController extends GetxController {
  HomeData homeData = HomeData(Get.find());
  // late StatusRequest statusRequest;
  MyServices myServices = Get.find();

  StatusRequest statusRequest = StatusRequest.none;

  List<File?> images = List.generate(6, (_) => null);

  String title = '';
  String description = '';
  String address = '';
  String price = '';
  String category_id = '';

  @override
  void onInit() {
    // typecontroller = TextEditingController();
    title = Get.arguments['title'].toString();
    description = Get.arguments['description'].toString();
    address = Get.arguments['address'].toString();
    price = Get.arguments['pric'].toString();
    category_id = Get.arguments['category_id'].toString();

    super.onInit();
  }

  int get selectedImagesCount {
    return images.where((image) => image != null).toList().length;
  }

  void setImage(int index, File? image) {
    images[index] = image;
    update();
  }

  Widget buildImageWidget(File? image) {
    if (image != null) {
      return Image.file(image);
    } else {
      return const Icon(Icons.camera_alt);
    }
  }

  void showOptions(BuildContext context, int index) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: Text('Capture Image'.tr),
                onTap: () async {
                  Navigator.of(context).pop();
                  bool permissionGranted = await requestCameraPermission();
                  if (permissionGranted) {
                    pickImage(context, index, ImageSource.camera);
                  } else {
                    showToast('Camera permission denied'.tr);
                  }
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: Text('Choose Image from Gallery'.tr),
                onTap: () {
                  pickImage(context, index, ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<bool> requestCameraPermission() async {
    PermissionStatus status = await Permission.camera.request();
    return status.isGranted;
  }

  void pickImage(BuildContext context, int index, ImageSource source) async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(source: source);

    if (pickedImage != null) {
      setImage(index, File(pickedImage.path));
    } else {
      showToast('Failed to pick image'.tr);
    }
  }

  void showToast(String message) {
    Get.snackbar(
      '',
      message,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  addpro() async {
    File? firstImage =
        images.firstWhere((image) => image != null, orElse: () => null);

    log(firstImage.toString());

    statusRequest = StatusRequest.loading;
    update();
    var response = await homeData.postAddproduct(
        title,
        description,
        address,
        images[0]!,
        images[1]!,
        images[2]!,
        images[3]!,
        images[4]!,
        images[5]!,
        price,
        myServices.sharedPreferences.getString('id').toString(),
        category_id);
    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.defaultDialog(
          title: 'تم',
          middleText: "تم بنجاح",
        );
      } else {
        Get.defaultDialog(title: 'خطا', middleText: "حدث خطا ما ");
        statusRequest = StatusRequest.none;
      }
    }
    update();
  }
}
