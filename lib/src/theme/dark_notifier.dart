import 'package:flutter/material.dart';

class DarkNotifier extends ChangeNotifier {
  bool isDark = false;
  Color? backgroundColor = Colors.white;
  Color? greyLight_blackDark = Colors.grey[200];
  Color? greyLight_whiteDark = Colors.grey[600];
  Color? blackLight_whiteDark = Colors.black;

  void changeTheme() {
    isDark = !isDark;
    if (isDark) {
      backgroundColor = Colors.grey[900];

      greyLight_whiteDark = Colors.white;
      greyLight_blackDark = Colors.black;
      blackLight_whiteDark = Colors.white;
    } else {
      backgroundColor = Colors.white;
      greyLight_blackDark = Colors.grey[200];
      greyLight_whiteDark = Colors.grey[600];
      blackLight_whiteDark = Colors.black;
    }
    notifyListeners();
  }
}
