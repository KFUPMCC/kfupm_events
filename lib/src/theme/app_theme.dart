import 'package:flutter/material.dart';
import 'package:kfupm_events/main.dart';

class AppTheme {
  // static Color COLOR_PRIMARY = Colors.blueGrey.shade600;
  static Color COLOR_PRIMARY = Colors.blue;
  static Color COLOR_SECONDARY = Colors.black;

  static ThemeData theme() {
    return isDark
        ? ThemeData.dark().copyWith(
            buttonTheme: const ButtonThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ))
        : ThemeData(iconTheme: const IconThemeData(color: Colors.white));
  }
}
