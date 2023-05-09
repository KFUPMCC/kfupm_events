import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/events/domain/event.dart';

// function to add new events
Future<void> addEventToFirestore(BuildContext context, Event event) async {
  // Get a reference to the 'Events' collection in Firestore
  final eventCollection = FirebaseFirestore.instance.collection('Events');
  // Convert the Event object to a JSON representation before inserted in firestore
  final eventJson = event.toJson(context);
  // prepare the document placeholder with id as named representation
  final eventDocumentRef = eventCollection.doc(event.id.toString());
  // insert events Object as Json to 'Events' Collection in firestore database
  await eventDocumentRef.set(eventJson);
  // add to that document a subcollection of registrants
  final eventRegistrants = eventDocumentRef.collection('registrants');
}
