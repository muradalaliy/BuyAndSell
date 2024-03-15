import 'package:BuyAndSell/view/screen/category/categoryproducts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controller/category/categorycontroller.dart';

import '../../widget/customappbar.dart';

import 'categorycardlist.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CategoryControllerImp controller = Get.put(CategoryControllerImp());

    return Scaffold(
      appBar: CustomAppBar(
        textappbar: 'Categories'.tr,
      ),
      body: ListView.builder(
          itemCount: controller.categories.length,
          itemBuilder: (BuildContext context, int i) {
            return CategoryListCard(
              icon: controller.categories[i].icon,
              text: controller.categories[i].text,
              press: () {
                Category selectedCategory = controller.categories[i];
                // Navigator.push(
                //   context,

                //   MaterialPageRoute(
                //     builder: (context) => CategoryProducts(
                //       category: selectedCategory,

                // //);
                //     ),
                //   ),
                // );
                // Get.toNamed(AppRoute.subCategoryList,
                //     arguments: controller.categories[i].text);
              },
            );
          }),
    );
  }
}
