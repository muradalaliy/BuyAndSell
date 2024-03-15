
import 'package:flutter/material.dart';

class ListProvider with ChangeNotifier {
  List<String> list = [];
  void addItem(String item) {
    list.add(item);
    notifyListeners();
  }
}
