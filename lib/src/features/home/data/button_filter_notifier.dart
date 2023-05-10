import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ButtonFilterNotifier extends ChangeNotifier {
  bool sport = true;
  bool shortCourse = true;
  bool festival = true;
  bool workshop = true;
  bool exam = true;

  void enableDisableFilter(String buttonName) {
    if (buttonName == 'sport') {
      sport = !sport;
    } else if (buttonName == 'shortCourse') {
      shortCourse = !shortCourse;
    } else if (buttonName == 'festival') {
      festival = !festival;
    } else if (buttonName == 'workshop') {
      workshop = !workshop;
    } else if (buttonName == 'exam') {
      exam = !exam;
    }
    notifyListeners();
  }
}
