// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/events/presentation/eventInfo/time_info.dart';
import 'package:intl/intl.dart';
class EventInfo extends StatelessWidget {
  const EventInfo({
    Key? key,
    required this.time,
    required this.date,
    // required this.location,
    // required this.agenda,
  }) : super(key: key);
  final TimeOfDay time;
  final DateTime date;
  // final String location;
  // final String agenda;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TimeInfo(date: date, time: time),
      //LocationInfo(),
      //AgendaInfo(),
    ]);
  }
}
