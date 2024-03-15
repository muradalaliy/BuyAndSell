import 'package:BuyAndSell/view/screen/Home/notifications.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/Home/customtextheader.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomHeaderText(
                textheader: "Good day for shopping and sell".tr,
                color: Colors.white.withOpacity(0.7),
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              const NotificationsButtom(),
            ],
          ),
           CustomHeaderText(
            textheader: "BuyAndSell".tr,
            color: Colors.white,
            fontSize: 20,
          ),
        ],
      ),
    );
  }
}
//  drawer: Drawer(
//             child: SingleChildScrollView(
//                 child: Container(
//               child: Column(children: [
//                 UserAccountsDrawerHeader(
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [
//                         Color(0xccf7c1618),
//                         Color(0xfff7c1618),
//                         Color(0xccf7c1618),
//                         Color(0xfff7c1618),
//                       ],
//                     ),
//                   ),
//                   currentAccountPicture: CircleAvatar(
//                     backgroundImage: AssetImage("assets/images/profile.png"),
//                     backgroundColor: Color.fromARGB(255, 226, 223, 223),
//                   ),
//                   accountName: Text(
//                     "Yousra Al-awadi",
//                     style: TextStyle(color: Colors.white, fontSize: 20),
//                   ),
//                   accountEmail: Text(
//                     "ysra@gmail.com",
//                     style: TextStyle(color: Colors.grey[200], fontSize: 16),
//                   ),
//                 ),
//                 Container(
//                     padding: EdgeInsets.only(top: 15),
//                     child: Column(
//                       children: [
//                         ListTile(
//                           onTap: () {
//                             Navigator.pushNamed(context, "/Dashboard");
//                           },
//                           title: Text(
//                             " Dashboard",
//                             style: TextStyle(color: Colors.black, fontSize: 16),
//                           ),
//                           leading: IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.dashboard_outlined,
//                                 color: Colors.black,
//                                 size: 20,
//                               )),
//                         ),
//                         ListTile(
//                           onTap: () {
//                             Navigator.pushNamed(context, "/Contacts");
//                           },
//                           title: Text(
//                             " Contacts",
//                             style: TextStyle(color: Colors.black, fontSize: 16),
//                           ),
//                           leading: IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.contacts,
//                                 color: Colors.black,
//                                 size: 20,
//                               )),
//                         ),
//                         ListTile(
//                           onTap: () {},
//                           title: Text(
//                             " Events",
//                             style: TextStyle(color: Colors.black, fontSize: 16),
//                           ),
//                           leading: IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.event,
//                                 color: Colors.black,
//                                 size: 20,
//                               )),
//                         ),
//                         ListTile(
//                           onTap: () {},
//                           title: Text(
//                             " Notes",
//                             style: TextStyle(color: Colors.black, fontSize: 16),
//                           ),
//                           leading: IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.notes,
//                                 color: Colors.black,
//                                 size: 20,
//                               )),
//                         ),
//                         Divider(
//                           thickness: 0.3,
//                           color: Color(0xfff7c1618),
//                         ),
//                         ListTile(
//                           onTap: () {},
//                           title: Text(
//                             " Settings",
//                             style: TextStyle(color: Colors.black, fontSize: 16),
//                           ),
//                           leading: IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.settings,
//                                 color: Colors.black,
//                                 size: 20,
//                               )),
//                         ),
//                         ListTile(
//                           onTap: () {},
//                           title: Text(
//                             " Notifications",
//                             style: TextStyle(color: Colors.black, fontSize: 16),
//                           ),
//                           leading: IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.notifications,
//                                 color: Colors.black,
//                                 size: 20,
//                               )),
//                         ),
//                         Divider(
//                           thickness: 0.3,
//                           color: Color(0xfff7c1618),
//                         ),
//                         ListTile(
//                           onTap: () {},
//                           title: Text(
//                             " Privacy policy",
//                             style: TextStyle(color: Colors.black, fontSize: 16),
//                           ),
//                           leading: IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.privacy_tip,
//                                 color: Colors.black,
//                                 size: 20,
//                               )),
//                         ),
//                         ListTile(
//                           onTap: () {},
//                           title: Text(
//                             " Send feedback",
//                             style: TextStyle(color: Colors.black, fontSize: 16),
//                           ),
//                           leading: IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.send,
//                                 color: Colors.black,
//                                 size: 20,
//                               )),
//                         ),
//                       ],
//                     ))
//               ]),
//             )),
//           ),