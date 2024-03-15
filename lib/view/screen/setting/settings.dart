import 'package:BuyAndSell/core/constant/routes.dart';
import 'package:BuyAndSell/view/screen/myads/myads.dart';
import 'package:BuyAndSell/view/screen/setting/accountsettings.dart';
import 'package:BuyAndSell/view/screen/setting/blocked.dart';
import 'package:BuyAndSell/view/screen/setting/changelanguage.dart';
import 'package:BuyAndSell/view/screen/setting/contuctussetting.dart';

import 'package:BuyAndSell/view/screen/setting/settingslistcard.dart';
import 'package:BuyAndSell/view/screen/setting/settingsaboutus.dart';
import 'package:BuyAndSell/view/widget/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/services/services.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        textappbar: "Settings".tr,
      ),
      body: ListView(
        children: [
          SettingsListCard(
              text: "Languge".tr,
              icon: Icons.language,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChangeLanguage()),
                );
              }),
          SettingsListCard(
              text: "Account Management".tr,
              icon: Icons.manage_accounts,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AccountSettings()),
                );
              }),
          SettingsListCard(
              text: "My Ads".tr,
              icon: Icons.list_alt_outlined,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyAds()),
                );
              }),
          SettingsListCard(
              text: "Blocked".tr,
              icon: Icons.block,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Blocked()),
                );
              }),
          SettingsListCard(
              text: "About Us".tr,
              // text: "Notification Settings",
              icon: Icons.help_outline_rounded,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AboutUsSettings()),
                );
              }),
          SettingsListCard(
            text: "Contact Us".tr,
            icon: Icons.phone_callback,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactUsPage()),
              );
            },
          ),
          SettingsListCard(
              text: "Logout".tr,
              icon: Icons.exit_to_app,
              onTap: () {
                Get.defaultDialog(
                    title: "Logout".tr,
                    onConfirm: () {
                      MyServices myServices = Get.find();
                      myServices.sharedPreferences.clear();
                      Get.offAllNamed(AppRoute.login);
                    },
                    middleText: "Are you sure you want to log out ?".tr);
              }),
        ],
      ),
    );
  }
}
