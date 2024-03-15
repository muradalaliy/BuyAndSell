import 'package:BuyAndSell/core/constant/imageasset.dart';
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 70,
  
        backgroundColor: const Color.fromARGB(255, 226, 224, 223),
        child: Padding(
          padding: const EdgeInsets.all(0), // Border radius
          child: ClipOval(
            child: Image.asset(
              AppImageAsset.logo,
              
            ),
            
          ),
        ));
  }
}
