// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kfupm_events/src/features/events/presentation/eventInfo/agenda_info.dart';
import 'package:kfupm_events/src/features/events/presentation/eventInfo/location_info.dart';
import 'package:kfupm_events/src/features/events/presentation/eventInfo/time_info.dart';

class EventInfo extends StatelessWidget {
  const EventInfo({
    Key? key,
    required this.time,
    required this.date,
    required this.location,
    required this.agenda,
    required this.locationURL,
  }) : super(key: key);
  final TimeOfDay time;
  final DateTime date;
  final String location;
  final String agenda;
  final String locationURL;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TimeInfo(date: date, time: time),
      const SizedBox(
        height: 20,
      ),
      LocationInfo(
        location: location,
        locationURL: locationURL,
      ),
      const SizedBox(
        height: 20,
      ),
      AgendaInfo(agenda: agenda),
    ]);
  }
}
