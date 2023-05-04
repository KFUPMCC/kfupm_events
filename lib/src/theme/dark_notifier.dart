import 'package:flutter/material.dart';

class DarkNotifier extends ChangeNotifier {
  bool isDark = false;

  void changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
