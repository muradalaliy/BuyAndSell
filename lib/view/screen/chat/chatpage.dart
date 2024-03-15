import 'package:BuyAndSell/controller/chat/chatcontroller.dart';
import 'package:BuyAndSell/core/constant/color.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key, required Map<String, dynamic> arguments})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ChatControllerImp chatController = Get.put(ChatControllerImp());
    //  var args = Get.arguments;
    final Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String text = arguments["text"];
    final AssetImage image = arguments["image"];
    // final ImageProvider<Object> image = AssetImage(imagePath);

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 242, 240, 240),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 14.0, right: 14.0, top: 15),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff1B202D),
                        size: 24,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: image,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: ('Quicksand'),
                        color: Color(0xff1B202D),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  'FEB 12:00',
                  style: TextStyle(
                    color: Color(0xff1B202D),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Obx(
                        () => ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: chatController.messages.length,
                          itemBuilder: (context, index) {
                            var message = chatController.messages[index];
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 120, bottom: 20),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColor.curved,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: ListTile(
                                    title: Text(message.sender,
                                        style: const TextStyle(
                                            color: Colors.white)),
                                    subtitle: Obx(
                                      () => Text(
                                        message.text.value,
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    trailing: Text(
                                      '${message.timestamp.hour}:${message.timestamp.minute}',
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        bottomSheet: Container(
            color: const Color.fromARGB(255, 242, 240, 240),
            child: Row(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColor.curved,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.camera_alt_outlined),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: TextField(
                            controller: chatController.textEditingController,
                            style: const TextStyle(color: Colors.white70),
                            onChanged: (value) {
                              chatController.messageText.value = value;
                            },
                            decoration: const InputDecoration(
                              hintText: 'Message',
                              hintStyle: TextStyle(color: Colors.white70),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: IconButton(
                            icon: const Icon(
                              Icons.send,
                              color: Colors.white70,
                            ),
                            onPressed: () {
                              if (chatController.messageText.isNotEmpty) {
                                chatController.addMessage(
                                  Message(
                                    sender: 'Me',
                                    text: chatController.messageText.value,
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ])));
  }
}
