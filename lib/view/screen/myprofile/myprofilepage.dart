import 'package:BuyAndSell/core/constant/color.dart';
import 'package:BuyAndSell/view/screen/details/detailsproduct.dart';

import 'package:BuyAndSell/view/widget/profile/customstar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/category/categorycontroller.dart';
import '../../widget/profile/custombinaryoption.dart';

import '../../widget/profile/customcircleavatarprofile.dart';
import '../../widget/profile/customprofileappbar.dart';
import '../../widget/profile/customtextheaderprofile.dart';

class ProfilePage extends StatelessWidget {
  final Category category;

  const ProfilePage({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CategoryControllerImp controller = Get.find<CategoryControllerImp>();

    return Scaffold(
      appBar: const ProfileAppBar(),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomCircleAvatar(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      controller.name,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  CustomStar(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextHeaderProfile(
                        text: "Ads",
                        textNumber: "32",
                      ),
                      // CustomTextHeaderProfile(
                      //     text: "Following", textNumber: "789"),
                      CustomTextHeaderProfile(
                          text: "Followers", textNumber: "1.200"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          CustomBinaryOption(
            textLeft: "Your Ads".tr,
            textRight: "",
          ),
          Expanded(
            child: ListView.builder(
              itemCount: category.products.length,
              itemBuilder: (BuildContext context, int i) {
                Product product = category.products[i];
                return Column(
                  children: [
                    ListTile(
                      onTap: () {
                        // Category selectedCategory = controller.categories[i];
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (_) => DetailsScreen(
                        //       product: product,
                        //       category: selectedCategory,
                        //     ),
                        //   ),
                        // );
                      },
                      leading: Image.asset(
                        product.image[0],
                        width: 70,
                        height: 70,
                      ),
                      title: Text(
                        product.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          const SizedBox(height: 50),
                          const Icon(
                            Icons.person,
                            size: 18,
                            color: AppColor.curved,
                          ),
                          const SizedBox(width: 7),
                          Text(
                            ' ${product.addedBy}',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      trailing: Text(
                        ' \$${product.price}',
                        style:
                            const TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const Divider(
                      height: 3,
                      color: Colors.grey,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
