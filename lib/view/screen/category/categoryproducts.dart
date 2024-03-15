import 'package:BuyAndSell/controller/category_details_controller.dart';
import 'package:BuyAndSell/core/constant/color.dart';

import 'package:BuyAndSell/view/widget/customappbar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/imageasset.dart';
import '../../../core/constant/routes.dart';

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryDetailsControllerImp controller =
        Get.put(CategoryDetailsControllerImp());

    return Scaffold(
      appBar: CustomAppBar(textappbar: controller.catpro[0]['name']),
      body: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.6),
        itemCount: controller.product.length,
        itemBuilder: (BuildContext context, int i) {
          // Product product = category.products[i];
          return InkWell(
            onTap: () {
              // Category selectedCategory = controller.categories[i];
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (_) => DetailsScreen()),
              // );

              Get.toNamed(AppRoute.detailsScreen,
                  arguments: {'promodel': controller.catpro[0]['products'][i]});
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CachedNetworkImage(
                        imageUrl:
                            '${AppImageAsset.imgServer}${controller.catpro[0]['products'][i]['image']}'),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      controller.catpro[0]['products'][i]['name'],
                      style: const TextStyle(
                          color: AppColor.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          controller.catpro[0]['products'][i]['address'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontWeight: FontWeight.w400),
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          child: const Icon(Icons.person,
                              size: 18, color: AppColor.darkGreen),
                        ),
                      ],
                    ),
                    Text(
                      ' ${controller.catpro[0]['products'][i]['description']}',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${controller.catpro[0]['products'][i]['price']} \$',
                          style: const TextStyle(
                              color: AppColor.colorGoogle,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "sans"),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: AppColor.colorGoogle,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          );

          // Column(
          //   children: [
          //     ListTile(
          //       onTap: () {
          //         Category selectedCategory = controller.categories[i];
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (_) => DetailsScreen(
          //                     product: product,
          //                     category: selectedCategory,
          //                   )),
          //         );
          //       },
          //       leading: Image.asset(
          //         product.image[0],
          //         width: 70,
          //         height: 70,
          //       ),
          //       title: Text(
          //         product.name,
          //         style: const TextStyle(
          //           fontWeight: FontWeight.bold,
          //           fontSize: 16,
          //         ),
          //       ),
          //       subtitle: Row(
          //         children: [
          //           const SizedBox(height: 50),
          //           const Icon(Icons.person,
          //               size: 18, color: AppColor.darkGreen),
          //           const SizedBox(width: 7),
          //           Text(
          //             ' ${product.addedBy}',
          //             style: const TextStyle(fontSize: 16),
          //           ),
          //         ],
          //       ),
          //       trailing: Text(
          //         ' \$${product.price}',
          //         style: const TextStyle(fontSize: 18),
          //       ),
          //     ),
          //     const Divider(height: 3, color: Colors.grey),
          //   ],
          // );
        },
      ),
    );
  }
}
