import 'package:BuyAndSell/core/constant/color.dart';
import 'package:BuyAndSell/view/widget/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUsSettings extends StatelessWidget {
  const AboutUsSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        textappbar: "About Us",
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              'About Us'.tr,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColor.curved),
            ),
            SizedBox(height: 16),
            Text(
              'Welcome to our Used furniture Marketplace App , We created this app to provide a platform for buying and selling used furniture in a convenient and secure manner'
                  .tr,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 50),
            Text(
              'Our Mission'.tr,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColor.curved),
            ),
            SizedBox(height: 16),
            Text(
              "Our mission is to connect buyers and sellers of used furniture, making it easy for people to find great deals and for sellers to reach a large audience. We strive to provide a user-friendly experience and ensure the safety and satisfaction of our users.".tr,
              style: TextStyle(fontSize: 16, color: Colors.black54 ),
            ),
            // Add more information as needed
          ],
        ),
      ),
    );
  }
}
