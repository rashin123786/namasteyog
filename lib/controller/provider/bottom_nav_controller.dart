import 'package:flutter/material.dart';

class BottomNavController with ChangeNotifier {
  int currentIndex = 0;
  void bottomSwitch(index) {
    currentIndex = index;
    notifyListeners();
  }
}
