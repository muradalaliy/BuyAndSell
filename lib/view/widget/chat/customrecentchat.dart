import 'package:flutter/material.dart';

class CustomRecentChat extends StatelessWidget {
  const CustomRecentChat({
    Key? key,
    required this.text,
    required this.press,
    required this.backgroundImage,
  }) : super(key: key);

  final String text;
  final GestureTapCallback press;
  final ImageProvider<Object>? backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: backgroundImage,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: const TextStyle(color:Color(0xff1B202D), fontSize: 16),
            ),
          ],
        ),
      const  SizedBox(
          width: 25,
        ),
      ],
    );
  }
}
