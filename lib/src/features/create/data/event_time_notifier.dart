import 'package:flutter/material.dart';

class EventTimeNotifier extends ChangeNotifier {
  TimeOfDay? eventTime = TimeOfDay.now();

  void setEventTime(TimeOfDay? newTime) {
    eventTime = newTime;
    notifyListeners();
  }

  void resetEventTime() {
    eventTime = TimeOfDay.now();
    notifyListeners();
    //debugPrint('eventTime Disposed 696969');
  }
}
