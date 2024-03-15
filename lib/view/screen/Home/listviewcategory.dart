import 'package:BuyAndSell/controller/category/categorycontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/imageasset.dart';
import '../../../core/constant/routes.dart';
import '../../widget/Home/customcategorycard.dart';
import '../../widget/Home/customsectiontitle.dart';

class ListViewCategory extends StatelessWidget {
  const ListViewCategory({super.key, this.seeMore});
  final String? seeMore;
  @override
  Widget build(BuildContext context) {
    CategoryControllerImp controller = Get.put(CategoryControllerImp());
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SectionTitle(
              title: "Shop by Category".tr,
              seeMore: seeMore ?? '',
              press: () {
                controller.goToPageCategorytList();
              }),
        ),
        const SizedBox(height: 17),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                controller.categorie.length,
                (i) => CategoryCard(
                      icon:
                          '${AppImageAsset.imgServer}${controller.categorie[i]['image']}',
                      text: controller.categorie[i]['name'],
                      press: () {
                        Get.toNamed(AppRoute.categoryProducts,
                            arguments: {'catpro': controller.categorie[i]});
                      },
                    )),
          ),
        ),
      ],
    );
  }
}
