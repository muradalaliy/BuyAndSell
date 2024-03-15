import 'package:flutter/material.dart';

class CardListChat extends StatelessWidget {
  const CardListChat({
    Key? key,
    required this.text,
    required this.backgroundImage,
    required this.message,
    required this.time,
    required this.onTap,
  }) : super(key: key);

  final String text, message, time;
  final void Function()? onTap;

  final ImageProvider<Object>? backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0, top: 10, right: 20),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: backgroundImage,
        ),
        title: Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontFamily: ('Quicksand'), fontSize: 17),
        ),
        subtitle: Text(
          message,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
        trailing: Text(
          time,
          style: const TextStyle(color: Colors.grey),
        ),
        onTap: onTap,
      ),

      //),
    );
  }
}
