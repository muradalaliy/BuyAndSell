
import 'package:BuyAndSell/core/constant/color.dart';
import 'package:flutter/material.dart';

class SettingsListCard extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final IconData? icon;
  const SettingsListCard({
    Key? key,
    required this.text,
    required this.onTap, this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Text(text,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
          ),
          trailing:  Icon(
            size: 20,
            color: AppColor.buttonNanbar,
          icon
          ),
          onTap: onTap,
        ),
        SizedBox(
          height: 12,
        ),
        Divider(color: Colors.grey.shade500, height: 4, thickness: 1),
      ],
    );
  }
}
