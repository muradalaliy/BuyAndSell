import 'package:BuyAndSell/core/constant/color.dart';
import 'package:BuyAndSell/core/constant/routes.dart';

import 'package:BuyAndSell/view/screen/chat/cardlistchat.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<Map<String, dynamic>> recent = [
  {"text": "Barry", "image": "assets/images/image1.png"},
  {"text": "Perez", "image": 'assets/images/image22.png'},
  {"text": "Meral", "image": 'assets/images/image33.png'},
  {"text": "Ahmed", "image": 'assets/images/image44.png'},
  {"text": "Lydia", "image": 'assets/images/image55.png'},
];
List<Map<String, dynamic>> chatList = [
  {
    "text": "Barry",
    "image": const AssetImage("assets/images/chat111.png"),
    "message": "dannylove@gmail.com",
    "time": '08:43'
  },
  {
    "text": "Perez",
    "image": const AssetImage('assets/images/chat222.png'),
    "message": "dannylove@gmail.com",
    "time": '08:43'
  },
  {
    "text": "Meral",
    "image": const AssetImage('assets/images/chat333.png'),
    "message": "dannylove@gmail.com",
    "time": '08:43'
  },
  {
    "text": "Ahmed",
    "image": const AssetImage('assets/images/chat555.png'),
    "message": "dannylove@gmail.com",
    "time": '08:43'
  },
  {
    "text": "Lydia",
    "image": const AssetImage('assets/images/chat666.png'),
    "message": "dannylove@gmail.com",
    "time": '08:43'
  },
  {
    "text": "Lydia",
    "image": const AssetImage('assets/images/chat777.png'),
    "message": "dannylove@gmail.com",
    "time": '08:43'
  },
  {
    "text": "Lydia",
    "image": const AssetImage('assets/images/chat888.png'),
    "message": "dannylove@gmail.com",
    "time": '08:43'
  },
];

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
               Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text(
                      'Messages'.tr,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                        fontSize: 22,
                        color: AppColor.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(26, 116, 115, 115),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Search ....'.tr,
                        suffixIcon: const Icon(Icons.search),
                      ),
                    ),
                    const SizedBox(height: 14),
                    
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: chatList.length,
                              itemBuilder: (BuildContext context, int i) {
                                return CardListChat(
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      AppRoute.chatPage,
                                      arguments: {
                                        'text': recent[i]['text'],
                                        'image': chatList[i]['image'],
                                      },
                                    );
                                  },
                                  text: chatList[i]['text'],
                                  message: chatList[i]['message'],
                                  backgroundImage: chatList[i]['image'],
                                  time: chatList[i]['time'],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// import 'package:BuyAndSell/controller/chat/chat-controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';




// class ChatScreen extends StatelessWidget {
//   final ChatControllerImp _chatController = Get.put(ChatControllerImp());

//    ChatScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Chat App'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Obx(
//               () => ListView.builder(
//                 itemCount: _chatController.messages.length,
//                 itemBuilder: (context, index) {
//                   var message = _chatController.messages[index];
//                   return ListTile(
//                     title: Text(message.sender),
//                     subtitle: Obx(() => Text(message.text.value)),
//                     trailing: Text(
//                       '${message.timestamp.hour}:${message.timestamp.minute}',
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _chatController.textEditingController,
//                     decoration: InputDecoration(
//                       hintText: 'Type a message...',
//                     ),
//                     onChanged: (value) {
//                       _chatController.messageText.value = value;
//                     },
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.send),
//                   onPressed: () {
//                     var message = Message(
//                       sender: 'Me',
//                       text: _chatController.messageText.value,
//                     );
//                     _chatController.addMessage(message);
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }