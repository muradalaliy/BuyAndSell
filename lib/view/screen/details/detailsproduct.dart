import 'package:BuyAndSell/core/constant/color.dart';

import 'package:BuyAndSell/view/screen/details/customappbardetails.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../controller/details_controller.dart';
import '../../widget/detailsPro/customproductimagesider.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DetailsControllerImp());
    return Scaffold(
      appBar: CustomDetailsAppBar(
        onPressed: () {},
        icon: Icon(
          Icons.favorite,
          color: Colors.grey.shade500,
        ),
        iconback: const Icon(
          Icons.arrow_back_ios,
          color: AppColor.darkGreen,
        ),
        onPressedback: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: GetBuilder<DetailsControllerImp>(builder: (controller) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.1,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(children: [
                    Center(
                      child: controller.productdetail != null
                          ? ProductImageSider(
                              productimage: controller.productdetail[0]
                                  ['image'])
                          : Container(),
                    ),
                  ]),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 20, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              //   child: CustomStar(),
                              )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        controller.productdetail[0]['name'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: AppColor.darkGreen.withOpacity(0.9)),
                      ),
                      Row(
                        children: [
                          Text(
                            " ${controller.productdetail[0]['price']} ",
                            style: const TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 22,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        "Write Category here ",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width / 4,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: AppColor.lightBrown,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                controller.productdetail[0]['description'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Divider(
                        color: Colors.grey[800],
                      ),
                      Row(
                        children: [
                          // CircleAvatar(
                          //   backgroundColor: AppColor.curved,
                          //   radius: 40,
                          //   child: CircleAvatar(
                          //       backgroundColor: Colors.grey.shade50,
                          //       radius: 38,
                          //       child: Image.asset(product!.imageaddedBy)),
                          // ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: ListTile(
                            title: Text(
                              ' product!.addedBy.toUpperCase()',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                            subtitle: GestureDetector(
                              onTap: () {
                                // Navigator.pushNamed(context, AppRoute.mainUserProfile,
                                //     arguments: {
                                //       "text": product!.addedBy.toUpperCase(),
                                //       "image": product!.imageaddedBy
                                //     });
                              },
                              child: Text(
                                "See Profile",
                                style: TextStyle(
                                  color: Colors.red.shade300,
                                  fontFamily: "Muli",
                                ),
                              ),
                            ),
                          ))
                        ],
                      ),
                      Divider(
                        color: Colors.grey[800],
                      ),
                      const Text(
                        "Add Posted at  3 days",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width / 4,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: AppColor.lightBrown,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                controller.productdetail[0]['address'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                )
              ]);
        }),
      ),
      bottomSheet: BottomAppBar(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
                child: MaterialButton(
                    color: AppColor.grey,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat_bubble,
                            size: 16,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Chat",
                            style: TextStyle(color: Colors.white),
                          ),
                        ]),
                    onPressed: () {
                      // Get.toNamed(AppRoute.chatPage, arguments: {
                      //   "text": 'product?.addedBy',
                      //   "image": product?.imageaddedBy,
                      // });
                    })),
            const SizedBox(width: 20),
            Expanded(
                child: MaterialButton(
              color: AppColor.darkGreen,
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.call,
                      size: 16,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Call",
                      style: TextStyle(color: Colors.white),
                    ),
                  ]),
              onPressed: () async {
                //إضافة الرقم
                await launchUrl(Uri.parse("tel:+201019872113"));
              },
            )),
          ],
        ),
      )),
    );
  }
}
