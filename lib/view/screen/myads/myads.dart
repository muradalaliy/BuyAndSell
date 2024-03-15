import 'package:BuyAndSell/controller/category/categorycontroller.dart';
import 'package:BuyAndSell/core/constant/color.dart';
import 'package:BuyAndSell/view/screen/details/detailsproduct.dart';
import 'package:BuyAndSell/view/widget/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAds extends StatelessWidget {
  const MyAds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CategoryControllerImp controller = Get.put(CategoryControllerImp());

    return Scaffold(
      appBar: const CustomAppBar(textappbar: "My Ads"),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(top: 15),
        child: SizedBox(
          height: 500, // Provide a fixed height or adjust as needed
          child: ListView.builder(
            itemCount: controller.categories.length,
            itemBuilder: (BuildContext context, int index) {
              final category = controller.categories[index];
              final product = category.products[0];

              return Column(
                children: [
                  ListTile(
                    onTap: () {
                      Category selectedCategory = controller.categories[index];
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
                      style: const TextStyle(fontSize: 18),
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
    );
  }
}
