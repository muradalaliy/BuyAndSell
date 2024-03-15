
import 'package:BuyAndSell/view/screen/chat/chatscreen.dart';
import 'package:BuyAndSell/view/screen/favorite/favorite.dart';
import 'package:BuyAndSell/view/screen/myprofile/profilenavbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/screen/homescreen.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
  hideNavbar();
  showNavbar();
}

class HomeScreenControllerImp extends HomeScreenController {
  
bool showNavbarv = true;

  int currentpage = 0;
  List<Widget> listPage = [
   const HomeScreen(),
   const MyFavorite(),
   const ChatScreen(),
    const Profile(),
  ];
  List buttonappbar = [
    {"title": "Home".tr, "icon": Icons.home},
    {"title": "Favorite".tr, "icon": Icons.favorite},
    {"title": "Chat".tr, "icon": Icons.chat},
    {"title": "Profile".tr, "icon": Icons.person}
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }

  @override
  hideNavbar() {
    showNavbarv = false;
  }

  @override
  showNavbar() {
    showNavbarv = true;
  }
}
