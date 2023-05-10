import 'package:kfupm_events/src/features/home/data/button_filter_notifier.dart';
import 'package:provider/provider.dart';

bool TypeFilter(context, String type) {
  if (type == 'workShop') {
    if (Provider.of<ButtonFilterNotifier>(context).workshop) {
      return true;
    }
  } else if (type == 'sport') {
    if (Provider.of<ButtonFilterNotifier>(context).sport) {
      return true;
    }
  } else if (type == 'festival') {
    if (Provider.of<ButtonFilterNotifier>(context).festival) {
      return true;
    }
  } else if (type == 'exam') {
    if (Provider.of<ButtonFilterNotifier>(context).exam) {
      return true;
    }
  } else if (type == 'shortCourse') {
    if (Provider.of<ButtonFilterNotifier>(context).shortCourse) {
      return true;
    }
  }
  return false;
}
