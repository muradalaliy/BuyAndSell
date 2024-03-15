import 'dart:developer';

import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handingdatacontroller.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/home_data.dart';

class Product {
  final String name;
  final String type;
  final String description;
  final String adress;
  final double price;
  List<String> image;
  final String addedBy;
  final String imageaddedBy;

  Product({
    required this.type,
    required this.description,
    required this.adress,
    required this.name,
    required this.price,
    required this.image,
    required this.addedBy,
    required this.imageaddedBy,
  });
}

class Category {
  final String icon;
  final String text;
  final List<Product> products;

  Category({
    required this.icon,
    required this.text,
    required this.products,
  });
}

abstract class CategoryListController extends GetxController {
  goToPageCategorytList();
  goToPageSubCategorytList();
}

class CategoryListControllerImp extends CategoryListController {
  int currentpage = 0;
  MyServices myServices = Get.find();
  String name = '';
  List categorie = [];
  List products = [];
  HomeData homeData = HomeData(Get.find());
  late StatusRequest statusRequest;

  @override
  void onInit() {
    // FirebaseMessaging.instance.getToken().then((value) {
    //   print(value);
    //   String? token = value;
    // });
    getData();
    name = myServices.sharedPreferences.getString("name").toString();
    super.onInit();
  }

  getData() async {
    statusRequest = StatusRequest.loading;

    // ignore: prefer_typing_uninitialized_variables
    var response = await homeData.getData();

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        categorie.addAll(response['categorie']);

        products.addAll(response['product']);
        log(categorie.toString());
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  @override
  goToPageCategorytList() {
    Get.toNamed(AppRoute.categoryList);
  }

  @override
  goToPageSubCategorytList() {
    Get.toNamed(
      AppRoute.subCategoryList,
    );
  }
}
