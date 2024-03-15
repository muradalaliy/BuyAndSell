import 'package:BuyAndSell/core/class/handlingdataview.dart';
import 'package:BuyAndSell/core/constant/color.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/categorylistcontroller.dart';
import '../../../core/constant/imageasset.dart';
import '../../../core/constant/routes.dart';
import '../../widget/customappbar.dart';

class SellerCategoryList extends StatelessWidget {
  const SellerCategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // CategoryListControllerImp controller = Get.put(CategoryListControllerImp());
    return Scaffold(
      appBar: CustomAppBar(
        textappbar: 'Choose Categories'.tr,
      ),
      body: GetBuilder<CategoryListControllerImp>(
          init: CategoryListControllerImp(),
          builder: (controller) {
            return HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: ListView.builder(
                  itemCount: controller.categorie.length,
                  itemBuilder: (BuildContext context, int i) {
                    return CategorySell(
                      icon: controller.categorie[i]['image'],
                      text: controller.categorie[i]['name'],
                      press: () {
                        Get.toNamed(AppRoute.form, arguments: {
                          'name': controller.categorie[i]['name'].toString(),
                          'id': controller.categorie[i]['id'].toString(),
                        });
                        // Navigator.pushNamed(context, AppRoute.form,
                        //     arguments: controller.categorie[i]['name']);
                      },
                    );
                  }),
            );
          }),
    );
  }
}

class CategorySell extends StatelessWidget {
  const CategorySell({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: ListTile(
        leading: Container(
            padding: const EdgeInsets.all(10.0),
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(30),
            ),
            child: CachedNetworkImage(
                imageUrl: '${AppImageAsset.imgServer}${icon!}')),
        title: Container(
          margin: const EdgeInsets.only(left: 12.0),
          child: Text(
            text!,
          ),
        ),
        trailing: const Icon(
          color: AppColor.curved,
          Icons.arrow_forward_ios,
          size: 12,
        ),
        onTap: press,
      ),
    );
  }
}
