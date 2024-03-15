

import 'package:flutter/material.dart';


class CustomUserProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomUserProfileAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
       
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            onPressed: () {
                Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey.shade500,
            ),
          ),
        ),
      ),
    );
  }
}
