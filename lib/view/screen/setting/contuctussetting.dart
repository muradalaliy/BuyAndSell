import 'package:BuyAndSell/core/constant/color.dart';
import 'package:BuyAndSell/view/widget/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';


class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        textappbar: "Contact Us".tr,
      ),
      body: Center(
        child: Column(
         // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Text(
              'Contact Us'.tr,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Phone Numbers:'.tr,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 8),
            Text('+201019872113'),
            SizedBox(height: 16),
            Column(
              children: [
                 SizedBox(height: 30),
                MaterialButton(
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 2),
                  textColor: Colors.white,
                   onPressed: () async {
                              await launch('tel:+201019872113');
                            },
                  color: AppColor.darkGreen,
                  child:  Text(
                    "Call".tr,
                    style: const TextStyle(),
                  ),
                ),
                SizedBox(height: 30),
       MaterialButton(
         padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 2),
         textColor: Colors.white,
         onPressed: ()async {
               await  launch('https://wa.me/201019872113');
               },
         color: AppColor.darkGreen,
         child:  Text(
           "WhatsApp Chat".tr,
           style: const TextStyle(),
         ),
         ),
              ],
            ),
          
            SizedBox(height: 16),
        
          
          ],
        ),
      ),
    );
  }
}
