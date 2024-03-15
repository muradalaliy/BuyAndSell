import 'package:BuyAndSell/core/constant/color.dart';
import 'package:flutter/material.dart';

class NotificationsButtom extends StatelessWidget {
  const NotificationsButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                decoration: BoxDecoration(
                    color: AppColor.darkGreen,
                  borderRadius: BorderRadius.circular(12)),

                //  padding: EdgeInsets.all(0),
                child: IconButton(
                  onPressed: () {},
                  icon:const Icon(Icons.notifications),
                  color: Colors.white,
                ),
              );
  }
}