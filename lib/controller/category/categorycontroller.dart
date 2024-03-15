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

abstract class CategoryController extends GetxController {
  changePage(int currentpage);
  goToPageCategorytList();
  goToPageSubCategorytList();
}

class CategoryControllerImp extends CategoryController {
  int currentpage = 0;
  MyServices myServices = Get.find();
  String name = '';
  String userimg = '';
  List categorie = [];
  List products = [];
  HomeData homeData = HomeData(Get.find());
  late StatusRequest statusRequest;

  List<Category> categories = [
    Category(
      icon: "assets/icons/category/bedroom.svg",
      text: "BedRoom".tr,
      products: [
        Product(
          name: "BED 1",
          type: "BedRoom",
          description:
              "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
          adress:
              "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
          price: 10000,
          image: [
            "assets/images/bedD.jpeg",
            "assets/images/bedD.jpeg",
            "assets/images/bedD.jpeg",
          ],
          addedBy: "John Doe",
          imageaddedBy: "assets/images/image1.png",
        ),
        Product(
          name: "BedDesk",
          type: "BedRoom",
          description:
              "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
          adress:
              "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
          price: 15000,
          image: [
            "assets/images/beddesk.jpeg",
            "assets/images/beddesk.jpeg",
            "assets/images/beddesk.jpeg",
          ],
          addedBy: "John Doe",
          imageaddedBy: "assets/images/image1.png",
        ),
      ],
    ),

    Category(
      icon: "assets/icons/category/carpet.svg",
      text: "Carpet".tr,
      products: [
        Product(
          name: "Carpet 1",
          type: "BedRoom",
          description:
              "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
          adress:
              "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
          price: 500,
          image: [
            "assets/images/carpet1.jpeg",
            "assets/images/carpet1.jpeg",
            "assets/images/carpet1.jpeg",
          ],
          addedBy: "John Doe",
          imageaddedBy: "assets/images/image1.png",
        ),
        Product(
          name: "Carpet 2",
          type: "BedRoom",
          description:
              "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
          adress:
              "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
          price: 800,
          image: [
            "assets/images/carpet2.jpeg",
            "assets/images/carpet2.jpeg",
            "assets/images/carpet2.jpeg",
          ],
          addedBy: "Jane Smith",
          imageaddedBy: "assets/images/image1.png",
        ),
      ],
    ),

    Category(
        icon: "assets/icons/category/curtain.svg",
        text: "Curtain".tr,
        products: [
          Product(
            name: "Curtain",
            type: "BedRoom",
            description:
                "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
            adress:
                "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
            price: 10000,
            image: [
              "assets/images/Curtain1.jpeg",
              "assets/images/Curtain1.1.jpeg",
              "assets/images/Curtain1.jpeg",
            ],
            addedBy: "John Doe",
            imageaddedBy: "assets/images/image1.png",
          ),
          Product(
            name: "Curtain",
            type: "BedRoom",
            description:
                "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
            adress:
                "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
            price: 10000,
            image: [
              "assets/images/Curtain2.jpeg",
              "assets/images/Curtain2.jpeg",
              "assets/images/Curtain2.jpeg",
            ],
            addedBy: "John Doe",
            imageaddedBy: "assets/images/image1.png",
          ),
        ]),
    Category(
        icon: "assets/icons/category/desk.svg",
        text: "Desk".tr,
        products: [
          Product(
            name: "white Table ",
            type: "BedRoom",
            description:
                "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
            adress:
                "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
            price: 10000,
            image: [
              "assets/images/Desk.jpeg",
              "assets/images/Desk.jpeg",
              "assets/images/Desk.jpeg",
            ],
            addedBy: "John Doe",
            imageaddedBy: "assets/images/image1.png",
          ),
          Product(
            name: "brown Table and chair",
            type: "BedRoom",
            description:
                "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
            adress:
                "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
            price: 10000,
            image: [
              "assets/images/Desk2.jpeg",
              "assets/images/Desk2.jpeg",
              "assets/images/Desk2.jpeg",
            ],
            addedBy: "John Doe",
            imageaddedBy: "assets/images/image1.png",
          ),
          Product(
            name: "white Table and chair",
            type: "BedRoom",
            description:
                "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
            adress:
                "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
            price: 10000,
            image: [
              "assets/images/Desk.jpeg",
              "assets/images/Desk.jpeg",
              "assets/images/Desk.jpeg",
            ],
            addedBy: "John Doe",
            imageaddedBy: "assets/images/image1.png",
          ),
        ]),
    Category(
        icon: "assets/icons/category/door-and-window.svg",
        text: "Door Window".tr,
        products: [
          Product(
            name: "Window",
            type: "BedRoom",
            description:
                "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
            adress:
                "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
            price: 10000,
            image: [
              "assets/images/window.jpeg",
              "assets/images/window.jpeg",
              "assets/images/window.jpeg",
            ],
            addedBy: "John Doe",
            imageaddedBy: "assets/images/image1.png",
          ),
          Product(
            name: "Door",
            type: "BedRoom",
            description:
                "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
            adress:
                "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
            price: 10000,
            image: [
              "assets/images/Door.jpeg",
              "assets/images/Door.jpeg",
              "assets/images/Door.jpeg",
            ],
            addedBy: "John Doe",
            imageaddedBy: "assets/images/image1.png",
          ),
        ]),
    Category(
        icon: "assets/icons/category/home-decoration.svg",
        text: "Decoration".tr,
        products: [
          Product(
            name: "Decoration",
            type: "BedRoom",
            description:
                "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
            adress:
                "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
            price: 10000,
            image: [
              "assets/images/Decoration1.jpeg",
              "assets/images/Decoration1.jpeg",
              "assets/images/Decoration1.jpeg",
            ],
            addedBy: "John Doe",
            imageaddedBy: "assets/images/image1.png",
          ),
          Product(
            name: "Decoration",
            type: "BedRoom",
            description:
                "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
            adress:
                "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
            price: 10000,
            image: [
              "assets/images/Decoration2.jpg",
              "assets/images/Decoration2.jpg",
              "assets/images/Decoration2.jpg",
            ],
            addedBy: "John Doe",
            imageaddedBy: "assets/images/image1.png",
          ),
        ]),
    Category(
        icon: "assets/icons/category/sofa.svg",
        text: "Living Room".tr,
        products: [
          Product(
            name: "Living",
            type: "Living",
            description:
                "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
            adress:
                "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
            price: 10000,
            image: [
              "assets/images/LivingRoom1.jpeg",
              "assets/images/LivingRoom1.jpeg",
              "assets/images/LivingRoom1.jpeg",
            ],
            addedBy: "John Doe",
            imageaddedBy: "assets/images/image1.png",
          ),
          Product(
            name: "Living",
            type: "BedRoom",
            description:
                "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
            adress:
                "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
            price: 10000,
            image: [
              "assets/images/LivingRoom2.jpeg",
              "assets/images/LivingRoom2.jpeg",
              "assets/images/LivingRoom2.jpeg",
            ],
            addedBy: "John Doe",
            imageaddedBy: "assets/images/image1.png",
          ),
        ]),
    Category(
        icon: "assets/icons/category/outdoor.svg",
        text: "Outdoor".tr,
        products: [
          Product(
            name: "outdoor1",
            type: "outdoor",
            description:
                "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
            adress:
                "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
            price: 10000,
            image: [
              "assets/images/Outdoor1.jpeg",
              "assets/images/Outdoor1.jpeg",
              "assets/images/Outdoor1.jpeg",
            ],
            addedBy: "John Doe",
            imageaddedBy: "assets/images/image1.png",
          ),
          Product(
            name: "outdoor",
            type: "BedRoom",
            description:
                "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
            adress:
                "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
            price: 10000,
            image: [
              "assets/images/Outdoor2.jpeg",
              "assets/images/Outdoor2.jpeg",
              "assets/images/Outdoor2.jpeg",
            ],
            addedBy: "John Doe",
            imageaddedBy: "assets/images/image1.png",
          ),
        ]),
    Category(
        icon: "assets/icons/category/kitchen.svg",
        text: "Kitchen".tr,
        products: [
          Product(
            name: "Kitchen",
            type: "BedRoom",
            description:
                "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
            adress:
                "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
            price: 10000,
            image: [
              "assets/images/Kit.jpeg",
              "assets/images/Kit.jpeg",
              "assets/images/Kit.jpeg",
            ],
            addedBy: "John Doe",
            imageaddedBy: "assets/images/image1.png",
          ),
          Product(
            name: "Kitchen",
            type: "BedRoom",
            description:
                "AutoText is reusable content that you can store and access over and over again. Click AutoText to access the text gallery",
            adress:
                "The Address, Downtown Dubai, Dubai. No Reservation Costs. Great Rates.",
            price: 800,
            image: [
              "assets/images/Kit.jpg",
              "assets/images/Kit.jpg",
              "assets/images/Kit.jpg",
            ],
            addedBy: "Jane Smith",
            imageaddedBy: "assets/images/image22.png",
          ),
        ]),
    //  بإضافة المزيد من الأقسام هنا...
  ];

  @override
  changePage(int currentpage) {
    currentpage = currentpage;
    update();
  }

  @override
  void onInit() {
    // FirebaseMessaging.instance.getToken().then((value) {
    //   print(value);
    //   String? token = value;
    // });
    getData();
    name = myServices.sharedPreferences.getString("name").toString();
    userimg = myServices.sharedPreferences.getString("image").toString();
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
