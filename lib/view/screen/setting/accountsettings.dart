import 'package:BuyAndSell/view/screen/setting/changeinformationsetting.dart';
import 'package:BuyAndSell/view/screen/setting/changepassword.dart';
import 'package:BuyAndSell/view/screen/setting/settingslistcard.dart';
import 'package:BuyAndSell/view/widget/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: CustomAppBar(textappbar: "Account Management".tr),
        body: ListView(children: [
    
           SettingsListCard(text: "Change information".tr,icon:  
            Icons.insert_drive_file_rounded,
             onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChangeInformationSettings()),
                );
             }),
           SettingsListCard(
              text: "Change Password".tr,
              icon:  
            Icons.password_outlined,
            
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChangePassword()),
                );
              }),
        ]
        )
        );
  }
}
