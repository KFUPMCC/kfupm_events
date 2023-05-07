import 'package:flutter/material.dart';

class EventDateNotifier extends ChangeNotifier {
  DateTime? eventDate = DateTime.now();

  void setEventDate(DateTime? newDate) {
    eventDate = newDate;
    notifyListeners();
  }

  void resetEventDate() {
    eventDate = DateTime.now();
    notifyListeners();
    //debugPrint('eventDate Disposed 696969');
  }
}
