import 'package:BuyAndSell/view/widget/customappbar.dart';
import 'package:flutter/material.dart';

class Blocked extends StatelessWidget {
  const Blocked({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(textappbar: "Blocked"),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading:const Icon(Icons.person),
              title:const Text("Blocked"),
              trailing:const Text("3"),
              onTap: (){},
            ),
          )
        ],
      ),
    );
  }
}
