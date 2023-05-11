import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ButtonFilterNotifier extends ChangeNotifier {
  bool sport = false;
  bool shortCourse = false;
  bool festival = false;
  bool workshop = false;
  bool exam = false;

  bool checkAllOff() {
    return !sport && !shortCourse && !festival && !workshop && !exam;
  }

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
