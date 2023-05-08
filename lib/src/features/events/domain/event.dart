// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:kfupm_events/src/features/events/domain/etype.dart';

class Event {
  const Event({
    required this.id,
    required this.creator,
    required this.title,
    required this.image,
    required this.agenda,
    required this.type,
    required this.host,
    required this.hostLogo,
    required this.building,
    required this.buildingURL,
    required this.seats,
    required this.time,
    required this.date,
  });
  final int id;
  final String creator;
  final String title;
  final String image;
  final String agenda;
  final EType type;
  final String host;
  final String hostLogo;
  final String building;
  final String buildingURL;
  final int seats;
  final TimeOfDay time;
  final DateTime date;

  Map<String, dynamic> toJson(BuildContext context) {
    return {
      'id': id,
      'creator': creator,
      'title': title,
      'image': image,
      'agenda': agenda,
      'type': type.toString().split('.')[1],
      'host': host,
      'hostLogo': hostLogo,
      'building': building,
      'buildingURL': buildingURL,
      'seats': seats,
      'time': time.format(context),
      'date': date.toIso8601String(),
    };
  }
}
