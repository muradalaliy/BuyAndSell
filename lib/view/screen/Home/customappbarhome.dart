import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/Home/homescreencontroller.dart';
import '../../widget/Home/custombuttonappbar.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Visibility(
            visible: controller.showNavbarv,
            child: BottomAppBar(
              // color: Color.fromARGB(255, 234, 232, 232),
              shape: const CircularNotchedRectangle(),
              notchMargin: 10,
              child: Row(children: [
                ...List.generate(controller.listPage.length + 1, (index) {
                  int i = index > 2 ? index - 1 : index;
                  return index == 2
                      ? const Spacer()
                      : CustomButtonAppBar(
                          onPressed: () {
                            if (i == 2) {
                              controller.changePage(i);
                              controller.showNavbar();
                            } else {
                              controller.changePage(i);
                              controller.showNavbar();
                            }
                          },
                          textbutton: controller.buttonappbar[i]['title'.tr],
                          iconbutton: controller.buttonappbar[i]['icon'],
                          active: controller.currentpage == i ? true : false,
                        );
                })
              ]),
            )));
  }
}
