// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kfupm_events/src/features/events/domain/etype.dart';

class Event {
  const Event({
    required this.title,
    required this.headImage,
    required this.type,
    required this.weekNumber,
    required this.date,
    required this.time,
    required this.location,
    required this.hostLogo,
    required this.hostName,
    required this.agenda,
    required this.description,
  });
  final String title;
  final String headImage;
  final EType type;
  final int weekNumber;
  final DateTime date;
  final TimeOfDay time;
  final String location;
  final String hostLogo;
  final String hostName;
  final String agenda;
  final String description;
}
