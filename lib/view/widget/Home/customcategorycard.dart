import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 95,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30),
                //   border: Border.all(color: AppColor.buttonNanbar)
              ),
              child: CachedNetworkImage(imageUrl: icon!),
            ),
            const SizedBox(height: 5),
            Text(
              text!, textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),

              //    style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
      ),
    );
  }
}
