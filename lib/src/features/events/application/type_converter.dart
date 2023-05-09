import '../domain/etype.dart';

EType fromStringToEType(String stringType) {
  
  if (stringType == 'Workshop') {
    return EType.workShop;
  } else if (stringType == 'sport') {
    return EType.sport;
  } else if (stringType == 'festival') {
    return EType.festival;
  } else if (stringType == 'exam') {
    return EType.exam;
  } else {
    return EType.shortCourse;
  }
}
