import 'package:BuyAndSell/core/constant/color.dart';
import 'package:BuyAndSell/core/localization/changelocal.dart';
import 'package:BuyAndSell/view/widget/customappbar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLanguage extends GetView<LocalController> {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(textappbar: "Change Languge".tr),
        body: Container(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 9),
              ),
              ListTile(
                onTap: () {
                  showConfirmationDialog("Change Language",
                          "Do you want to change the language?")
                      .then((confirmed) {
                    if (confirmed != null && confirmed) {
                      controller.changeLang("ar");
                    }
                  });
                  
                },
                title: Text(
                  "Arabic".tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const Divider(
                height: 9,
                color: Colors.grey,
              ),
              ListTile(
                onTap: () {
                  showConfirmationDialog("Change Language".tr,
                          "Do you want to change the language?".tr)
                      .then((confirmed) {
                    if (confirmed != null && confirmed) {
                      controller.changeLang("en");
                    }
                  });
                },
                title: Text(
                  "English".tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

Future<bool?> showConfirmationDialog(String title, String message) {
  return showDialog<bool>(
    context: Get.overlayContext!,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          Container(
            color: AppColor.buttonNanbar,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop(true); // تأكيد التغيير
              },
              child: Text(
                'Confirm'.tr,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            color: AppColor.buttonNanbar,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop(false); // إلغاء التغيير
              },
              child: Text(
                'Cancel'.tr,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      );
    },
  );
}


// class ChangeLanguage extends GetView<LocalController> {
//   const ChangeLanguage({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(textappbar: "Change Language"),
//       body: Container(
//         padding: const EdgeInsets.only(top: 15),
//         child: Column(
//           children: [
//             const Padding(
//               padding: EdgeInsets.only(bottom: 9),
//             ),
//             ListTile(
//               onTap: () {
//                 alertChangeLanen().then((confirmed) {
//                   if (confirmed) {
//                    controller.changeLang("ar");
//                    // Get.toNamed(AppRoute.settings);
//                   }
//                 });
//               },
//               title: Text(
//                 "Arabic".tr,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                 ),
//               ),
//             ),
//             const Divider(
//               height: 9,
//               color: Colors.grey,
//             ),
//             ListTile(
//               onTap: () {
//                 alertChangeLanen().then((confirmed) {
//                   if (confirmed) {
//                  controller.changeLang("en");
//                  //   Get.toNamed(AppRoute.settings);
//                   }
//                 });
//               },
//               title: Text(
//                 "English".tr,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
