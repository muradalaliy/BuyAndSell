import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/customappbar.dart';

class ChangeInformationSettings extends StatelessWidget {
  const ChangeInformationSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        textappbar: "Change Your Information".tr,
      ),
  
    );
  }
}
