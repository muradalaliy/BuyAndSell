import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String textappbar;

  const CustomAppBar({super.key, required this.textappbar});
  
  @override
  Size get  preferredSize =>const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.curved,
          elevation: 0,
          shape: const Border(bottom: BorderSide(color: Colors.grey)),
          iconTheme: const IconThemeData(color: Colors.white),
          
          title: Text(
            textappbar.tr,
            style: const TextStyle(color: Colors.white),
          )),
    );
  }
}
