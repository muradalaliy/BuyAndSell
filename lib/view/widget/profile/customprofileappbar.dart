import 'package:BuyAndSell/controller/profile/profilecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    ProfileControllerImp controller = Get.put(ProfileControllerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                controller.gotoSettings();
              },
              icon: Icon(
                Icons.settings,
                color: Colors.grey.shade500,
              ),
            ),
          ),
        ],
       
      ),
    );
  }
}
