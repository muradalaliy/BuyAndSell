import 'dart:io';

import 'package:BuyAndSell/core/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  return showDialog(
    context: Get.overlayContext!,
    builder: (BuildContext context) {
      return Container(
        child: CupertinoAlertDialog(
          title: Text(
            "Warning!",
          ),
          
          content: Text("Do you want to exit the application ?"),
          actions: [
            Container(
              color: AppColor.buttonNanbar.withOpacity(0.6),
              child: CupertinoDialogAction(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Text(
                  "Confirm",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: AppColor.buttonNanbar.withOpacity(0.6),
              child: CupertinoDialogAction(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      );
    },
  ).then((value) {
    if (value == true) {
      Future.delayed(Duration.zero, () => exit(0));
    }
    return value ?? false;
  });
}

// import 'dart:io';



// import 'package:flutter/material.dart';

// import 'package:get/get.dart';

// Future<bool> 
// alertExitApp() {
//   Get.defaultDialog(
   
//       title: "تنبيه",
//       middleText: "هل تريد الخروج من التطبيق",
//       actions: [
     
//         ElevatedButton(
//             onPressed: () {
//               exit(0);
//             },
//             child:const Text("confirm")),

//         ElevatedButton(
//             onPressed: () {
//               Get.back();
//             },
//            child: const Text("Cancel")),
      
//       ]);
//   return Future.value(true);
// }
