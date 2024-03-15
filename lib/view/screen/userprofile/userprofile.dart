import 'package:BuyAndSell/controller/profile/profilecontroller.dart';
import 'package:BuyAndSell/core/constant/color.dart';
import 'package:BuyAndSell/view/screen/details/detailsproduct.dart';

//import 'package:BuyAndSell/view/screen/noaccount/noaccount.dart';
import 'package:BuyAndSell/view/screen/userprofile/customprofileuserappbar.dart';
import 'package:BuyAndSell/view/widget/profile/customstar.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/category/categorycontroller.dart';
import '../../../core/constant/imageasset.dart';
import '../../widget/profile/custombinaryoption.dart';
import '../../widget/profile/custombutton.dart';

import '../../widget/profile/customtextheaderprofile.dart';

class UserProfile extends StatelessWidget {
  final Category category;

  const UserProfile({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CategoryControllerImp controller = Get.find<CategoryControllerImp>();
    Get.put(ProfileControllerImp());

    final Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String text = arguments["text"];
    final String imagePath = arguments["image"];
    final AssetImage image = AssetImage(imagePath);

    return Scaffold(
      appBar: const CustomUserProfileAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    // CircleAvatar(
                    //   radius: 50,
                    //   backgroundImage:
                    // ),
                    CachedNetworkImage(
                        imageUrl:
                            '${AppImageAsset.imgServer}${controller.userimg}'),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        text,
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
                            text: "Followers", textNumber: "1.200")
                      ],
                    ),
                    CustomButton(text: "Follow", onTap: () {}),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                CustomBinaryOption(
                  textLeft: "Ads".tr,
                  textRight: "",
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 500, // Provide a fixed height or adjust as needed
                    child: ListView.builder(
                      shrinkWrap: true, // Use shrinkWrap property
                      itemCount: category.products.length,
                      itemBuilder: (BuildContext context, int i) {
                        Product product = category.products[i];
                        return Column(
                          children: [
                            ListTile(
                              onTap: () {
                                Category selectedCategory =
                                    controller.categories[i];
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => DetailsScreen(),
                                  ),
                                );
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
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.black),
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
