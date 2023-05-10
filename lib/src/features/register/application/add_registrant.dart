import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../domain/registrant.dart';

// function to add new events
Future<void> addRegistrantToEvent(
    BuildContext context, Registrant registrant, String eventId) async {
  // Get a reference to the 'Events' collection in Firestore
  final eventCollection = FirebaseFirestore.instance.collection('Events');
  // GO INTO that specific event doc. given its ID.
  final eventDocumentRef = eventCollection.doc(eventId);
  // Get a reference to the 'registrants' subcollection under the event document
  final registrantsCollectionRef = eventDocumentRef.collection('registrants');
  // Transform object ot its json, before sent it to firestore registrants collection
  final registrantJson = registrant.toJson(context);
  // Create document in sub collection as place holder of emails instead of random id
  final registrantDoc =
      registrantsCollectionRef.doc(registrant.email.toString());
  // insert events Object as Json to 'Events' Collection in firestore database
  await registrantDoc.set(registrantJson);

  // decrement number of seats
  eventDocumentRef.update({
    'seats': FieldValue.increment(-1),
  });
}
