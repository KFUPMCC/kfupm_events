import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/events/domain/event.dart';

Future<void> addEventToFirestore(BuildContext context, Event event) async {
  final eventCollection = FirebaseFirestore.instance.collection('Events');
  final eventJson = event.toJson(context);
  await eventCollection.doc().set(eventJson);
}
