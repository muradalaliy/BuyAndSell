import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Message {
  final String sender;
  final RxString text;
  final DateTime timestamp;

  Message({required this.sender, required String text})
      : text = text.obs,
        timestamp = DateTime.now();
}

abstract class ChatController extends GetxController {
  onclose();
  addMessage(Message message);
}

class ChatControllerImp extends ChatController {
  var messages = <Message>[].obs;
  var messageText = ''.obs;
  final TextEditingController textEditingController = TextEditingController();

  
  @override
  void onclose() {
    textEditingController.dispose();
    super.onClose();
  }
@override
  void addMessage(Message message) {
    messages.add(message);
    messageText.value = '';
    textEditingController.clear();
  }
}
