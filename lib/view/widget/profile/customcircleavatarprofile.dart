import 'package:BuyAndSell/controller/profile/profilecontroller.dart';
import 'package:BuyAndSell/core/constant/color.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/imageasset.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileControllerImp());
    ProfileControllerImp controller = Get.find<ProfileControllerImp>();

    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        // CircleAvatar(
        //   radius: 50,
        //   backgroundColor: Colors.grey.shade300,
        //   backgroundImage: const AssetImage("assets/images/Avatar.png"),
        // ),
        CachedNetworkImage(
            imageUrl: '${AppImageAsset.imgServeruser}${controller.userimg}'),
        InkWell(
          onTap: () {
            controller.getImage();
          },
          child: const CircleAvatar(
            radius: 12,
            backgroundColor: AppColor.buttonNanbar,
            child: Icon(
              Icons.edit,
              size: 15,
              color: Colors.white,
            ),
          ),
        ),
      ],

      // const CircleAvatar(
      //   radius: 50,
      //   backgroundImage: AssetImage("assets/images/Avatar.png"),
      // ),
      // InkWell(
      //   onTap: () {
      //     controller.getImage();
      //   },
      //   child: const CircleAvatar(
      //     radius: 12,
      //     backgroundColor: AppColor.curved,
      //     child: Icon(
      //       Icons.edit,
      //       size: 15,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      // ],
    );
  }
}
