import 'package:flutter/foundation.dart';

class EventCreatorNotifier extends ChangeNotifier {
  String? creator = '';

  void setCreator(String? newCreator) {
    creator = newCreator;
    notifyListeners();
  }

  void resetEventCreator(){
    creator = '';
    notifyListeners();
  }
}
