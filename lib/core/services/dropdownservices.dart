import 'package:flutter/material.dart';

class DropdownServices with ChangeNotifier {
  var priceDropdownList = [
    "SAR"
        "YER"
        "USD"
  ];
  var  selectedPrice ;
  setPriceValue(valu) {
    selectedPrice = valu;
    notifyListeners();
  }
}
