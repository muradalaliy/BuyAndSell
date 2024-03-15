import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press, required this.seeMore,
  }) : super(key: key);

  final String title;
   final String seeMore;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:Theme.of(context).textTheme.headline2,
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            seeMore.tr,
            style:  Theme.of(context).textTheme.bodyText2,
            
          ),
        ),
      ],
    );
  }
}