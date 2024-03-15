
import 'package:BuyAndSell/view/screen/userprofile/userprofile.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/category/categorycontroller.dart';



class MainUserProfile extends StatelessWidget {
  const MainUserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryControllerImp controller = Get.put(CategoryControllerImp());
   Category selectedCategory = controller.categories[0];
    return Scaffold(
   

      body: UserProfile(category: selectedCategory,),
    
  
    );
    
  }
}