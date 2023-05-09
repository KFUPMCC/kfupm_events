import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/events/domain/event.dart';

// This function takes a BuildContext object and an Event object as input parameters,
// and returns a Future<void> object.
Future<void> addEventToFirestore(BuildContext context, Event event) async {
  // Get a reference to the 'Events' collection in Firestore
  final eventCollection = FirebaseFirestore.instance.collection('Events');
  // Convert the Event object to a JSON representation
  final eventJson = event.toJson(context);
  // Add the JSON data to Firestore as a new document in the 'Events' collection
  await eventCollection.doc().set(eventJson);
}
