import 'package:BuyAndSell/core/constant/color.dart';
import 'package:BuyAndSell/view/screen/Home/headertext.dart';

import 'package:flutter/material.dart';

import '../../widget/Home/customcirculecontainerhome.dart';
import '../../widget/Home/customcurvededges.dart';

import 'searchtextformfield.dart';

class CurvedWidget extends StatelessWidget {
  const CurvedWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: Container(
        color: AppColor.curved,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 300,
          child: Stack(children: [
            Positioned(
              top: -150,
              right: -250,
              child: CirculeContainer(
                backgroundColor: Colors.white.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: CirculeContainer(
                backgroundColor: Colors.white.withOpacity(0.1),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  HeaderText(),
                  SizedBox(
                    height: 30.0,
                  ),
                  SearchTextFormField(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
