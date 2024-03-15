import 'package:BuyAndSell/controller/category/categorycontroller.dart';
import 'package:BuyAndSell/core/constant/color.dart';
import 'package:BuyAndSell/core/constant/imageasset.dart';
import 'package:BuyAndSell/core/constant/routes.dart';

import 'package:BuyAndSell/view/widget/Home/customsectiontitle.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FreshProduct extends StatelessWidget {
  final bool active;
  const FreshProduct({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    CategoryControllerImp controller = Get.put(CategoryControllerImp());

    return Container(
      color: Colors.grey.shade100,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          SectionTitle(
            title: "Latest advertisements".tr,
            seeMore: "See More",
            press: () {
              Navigator.pushNamed(
                context,
                AppRoute.productList,
              );
            },
          ),
          GridView.builder(
              shrinkWrap: true, // إعداد هذا الخاصية إلى true
              physics: const NeverScrollableScrollPhysics(), // تعطيل التمرير
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2 / 2.8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: controller.products.length,
              itemBuilder: (BuildContext context, int index) {
                //    final category = controller.categories[index];
                //  final product = controller.products[index];
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoute.detailsScreen,
                        arguments: {'promodel': controller.products[index]});
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (_) => DetailsScreen(),
                    //   ),
                    // );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColor.curved),
                        borderRadius: BorderRadius.circular(18)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 100,
                                  child: Center(
                                      child: CachedNetworkImage(
                                          imageUrl:
                                              '${AppImageAsset.imgServer}${controller.products[index]['image']}'))),
                              const SizedBox(height: 10),
                              Text(
                                controller.products[index]['price'],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                controller.products[index]['name'],
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 18),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(
                                    Icons.location_pin,
                                    size: 14,
                                    color: Colors.black45,
                                  ),
                                  Flexible(
                                      child: Text(
                                    controller.products[index]['address'],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: Colors.black),
                                  )),
                                ],
                              ),
                            ],
                          ),
                          // Positioned(
                          //   bottom: 60,
                          //   left: 125,
                          //   child: IconButton(
                          //       onPressed: () {},
                          //       // size: buttonSize,

                          //       icon: Icon(
                          //         active ? Icons.favorite : Icons.favorite,
                          //         color: active ? Colors.red : Colors.grey,
                          //       )),
                          // )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ]),
      ),
    );
  }
}
