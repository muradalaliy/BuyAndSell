import 'package:BuyAndSell/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/profile/profilecontroller.dart';

class CustomBinaryOption extends StatelessWidget {
  final String? textLeft;
  final String? textRight;
 final void Function()? onTap;
  const CustomBinaryOption({super.key, this.textLeft, this.textRight, this.onTap});

  @override
  Widget build(BuildContext context) {
    Color primary = AppColor.curved;

    Color mainText = const Color(0xFF2E3E5C);
    Color seconDaryText = const Color(0xFF9FA5C0);

    ProfileControllerImp controller = Get.put(ProfileControllerImp());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        color: Colors.white,
        height: 50,
        child: Row(
          children: [
            Expanded(
                child: InkWell(
              onTap: onTap,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    textLeft!,
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.w600,
                        color:
                            controller.lr == false ? mainText : seconDaryText),
                  ),
                  Container(
                    height: controller.lr == false ? 3 : 1,
                    color: controller.lr == false ? primary : seconDaryText,
                  ),
                ],
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                controller.changeOption(true);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    textRight!,
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.w600,
                        color:
                            controller.lr == true ? mainText : seconDaryText),
                  ),
                  Container(
                    height: controller.lr == true ? 3 : 1,
                    color: controller.lr == true ? primary : seconDaryText,
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
