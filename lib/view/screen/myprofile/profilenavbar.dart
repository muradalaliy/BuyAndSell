

import 'package:BuyAndSell/view/screen/myprofile/myprofilepage.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/category/categorycontroller.dart';



class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryControllerImp controller = Get.put(CategoryControllerImp());
   Category selectedCategory = controller.categories[0];
    return Scaffold(


      body: ProfilePage(category: selectedCategory,),
    
  
    );
    
  }
}