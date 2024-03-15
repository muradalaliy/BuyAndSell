import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class CustomStar extends StatelessWidget {
  const CustomStar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center, // توسيط العناصر في الصف
          children: [
            RatingBar.builder(
              initialRating: 3.5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 25,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          "Rating".tr +" ${0}",
        ),
      ],
    );
  }
}
