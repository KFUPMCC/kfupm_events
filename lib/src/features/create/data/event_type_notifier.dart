import 'package:flutter/material.dart';

import '../../events/domain/etype.dart';

class EventTypeNotifier extends ChangeNotifier {
  EType eventType = EType.shortCourse;

  void setEventType(String? type) {
    if (type == 'Short Course' || type == 'Select Type' || type == 'Other') {
      eventType = EType.shortCourse;
    } else if (type == 'Workshop') {
      eventType = EType.workShop;
    } else if (type == 'Sport') {
      eventType = EType.sport;
    } else if (type == 'Festival') {
      eventType = EType.festival;
    } else if (type == 'Exam') {
      eventType = EType.exam;
    } else {}

    notifyListeners();
  }

  void resetEventType() {
    eventType = EType.shortCourse;
    notifyListeners();
    //debugPrint('eventType Disposed 696969');
  }
}
