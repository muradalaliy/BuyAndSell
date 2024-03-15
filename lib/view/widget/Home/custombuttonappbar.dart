import 'package:BuyAndSell/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final String textbutton;
  final IconData iconbutton;

  final bool active;
  const CustomButtonAppBar( 
      {super.key,
      this.onPressed,
      required this.textbutton,
      required this.iconbutton,
      required this.active});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
    //  onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconbutton ,
            color: active == true ? AppColor.buttonNanbar: AppColor.grey2  ,
          ),
          Text(
            textbutton,
            style: TextStyle(
              color: active == true ?AppColor.black:AppColor.grey2,
            ),
          )
        ],
      ),
    );
  }
}
