import 'package:BuyAndSell/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/Sell/imagegridcontroller.dart';
import '../../../core/constant/color.dart';
import '../../widget/customappbar.dart';

class ImageGrid extends StatelessWidget {
  final ImageGridController controller = Get.put(ImageGridController());

  ImageGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(textappbar: "Upload Image".tr),
      body: GetBuilder<ImageGridController>(
        builder: (controller) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemCount: controller.images.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  controller.showOptions(context, index);
                },
                child: Container(
                  margin: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: controller.buildImageWidget(controller.images[index]),
                ),
              );
            },
          );
        },
      ),
      bottomSheet: GetBuilder<ImageGridController>(
        builder: (controller) {
          return HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: MaterialButton(
                      textColor: Colors.white,
                      onPressed: () {
                        if (controller.selectedImagesCount >= 2) {
                          // الانتقال إلى الشاشة التالية
                          controller.addpro();
                        } else {
                          controller
                              .showToast('Please select at least 2 images'.tr);
                        }
                      },
                      color: AppColor.curved,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Next".tr,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
