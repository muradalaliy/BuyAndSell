import 'package:flutter/material.dart';

class CustomDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Icon icon;
  final Function()? onPressed;
  final Icon iconback;
  final Function()? onPressedback;
  const CustomDetailsAppBar(
      {Key? key,
      required this.icon,
      this.onPressed,
      required this.iconback,
      this.onPressedback})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: onPressed,
              icon: icon,
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(onPressed: onPressedback, icon: iconback),
        ),
      ),
    );
  }
}
