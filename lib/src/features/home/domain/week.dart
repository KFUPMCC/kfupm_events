// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:kfupm_events/src/features/events/domain/event.dart';

class Week {
  const Week({
    required this.weekNumber,
    required this.weekEventsList,
  });
  final int weekNumber;
  final Event weekEventsList;
}
