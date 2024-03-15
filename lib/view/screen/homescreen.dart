import 'package:BuyAndSell/controller/category/categorycontroller.dart';
import 'package:BuyAndSell/core/class/handlingdataview.dart';
import 'package:BuyAndSell/view/screen/Home/curvedwidget.dart';
import 'package:BuyAndSell/view/screen/Home/freshproduct.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Home/listviewcategory.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: GetBuilder<CategoryControllerImp>(
              init: CategoryControllerImp(),
              builder: (controller) {
                return HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: Column(
                    children: [
                      const CurvedWidget(),
                      Container(
                        color: Colors.white,

                        child: Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 12, 8),
                          child: Column(
                            children: [
                              ListViewCategory(
                                seeMore: "See More",
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              // Divider( color: Colors.grey.shade200, thickness: 10.0),

                              //ListViewBestProduct(),
                            ],
                          ),
                        ),
                        //     ]),
                        //   ),
                        // ),
                      ),
                      const FreshProduct(
                        active: true,
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
