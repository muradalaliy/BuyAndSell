import 'package:BuyAndSell/core/constant/color.dart';
import 'package:BuyAndSell/core/constant/imageasset.dart';
import 'package:BuyAndSell/view/screen/Home/listviewcategory.dart';
import 'package:BuyAndSell/view/widget/customappbar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductList extends StatelessWidget {
  final bool active;

  ProductList({Key? key, required this.active}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(textappbar: "Product".tr),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: ListViewCategory(),
              ),
              Container(
                  child: Divider(
                thickness: 10,
                color: AppColor.buttonNanbar.withOpacity(0.1),
              )),
              Container(
                color: Colors.white.withOpacity(0.1),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 2 / 2.8,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: AppColor.curved),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 100,
                                          child: Center(
                                            child: Image.asset(
                                                AppImageAsset.best1),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        const Text(
                                          "\$20000",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                           const SizedBox(height: 8.0),
                                        Text(
                                          "  product name of name ",
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
                                              "Adress Hada Al Yemwn Sanaa Sanaa",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )),
                                          ],
                                        ),
                                      ],
                                    ),
                                   
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
