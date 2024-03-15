import 'package:BuyAndSell/controller/Home/homescreencontroller.dart';
import 'package:BuyAndSell/core/constant/color.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';
import 'Home/customappbarhome.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
              floatingActionButton:Visibility(
                visible: controller.showNavbarv,
                child: 
              
              
               FloatingActionButton(
                backgroundColor: AppColor.curved,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoute.sellerCategoryList);
                },
                child: const Icon(Icons.add),
              ),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: const CustomAppBarHome(),
              body: controller.listPage.elementAt(controller.currentpage),
            )
      
            );
  }
}
