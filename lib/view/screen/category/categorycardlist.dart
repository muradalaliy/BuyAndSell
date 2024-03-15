import 'package:BuyAndSell/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryListCard extends StatelessWidget {
  const CategoryListCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: 
        Container(
           padding: const EdgeInsets.all(10.0),
             height: 55,
            width: 55,
              decoration: BoxDecoration(
                
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30),
             //   border: Border.all(color: AppColor.buttonNanbar)
              ),
              child: SvgPicture.asset(icon!, color: AppColor.curved,
      
              ),
            ),
        
        // SvgPicture.asset(
        //   icon!,
        //   width: 40,
        //   color: AppColor.buttonNanbar,
        // ),
        
        title: Padding(
          padding:const EdgeInsets.only(left: 15.0),
          child: Text(
            text!,
          ),
        ),
        trailing:const Icon(
          Icons.arrow_forward_ios,
          size: 12,
            color: AppColor.buttonNanbar,
        ),
        onTap: press,
      ),
      
    );
  }
}
