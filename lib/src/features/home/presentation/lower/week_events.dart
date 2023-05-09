// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_card.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/header_section.dart';

class WeekEvents extends StatefulWidget {
  const WeekEvents({
    Key? key,
  }) : super(key: key);

  @override
  State<WeekEvents> createState() => _WeekEventsState();
}

class _WeekEventsState extends State<WeekEvents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderSection(
          text: 'Recommended events',
        ),
        // Widget to retrieve data from firestore
        StreamBuilder<QuerySnapshot>(
          // Live listening of firestore changes
          stream: FirebaseFirestore.instance.collection('Events').snapshots(),
          // if any change occur in stream: path, update below widget after checking or validating
          builder: (context, snapshot) {
            // if any error occurs while retrieving events data
            if (snapshot.hasError) {
              return Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text('Error: ${snapshot.error}'),
              );
            }
            // if there is no events
            if (!snapshot.hasData) {
              return const Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Text('No event has been added yet.'),
              );
            }

            // otherwise, store list of documents inside 'events' list
            // similar to list of Json document objects each as event
            final events = snapshot.data!.docs;

            return SizedBox(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: events.length,
                itemBuilder: (context, index) {
                  return EventCard(
                    event: events[index],
                  );
                },
              ),
            );
          },
        ),
        const HeaderSection(
          text: 'Recently added events',
        ),
        StreamBuilder<QuerySnapshot>(
          // Live listening of firestore changes
          stream: FirebaseFirestore.instance.collection('Events').snapshots(),
          // if any change occur in stream: path, update below widget after checking or validating
          builder: (context, snapshot) {
            // if any error occurs while retrieving events data
            if (snapshot.hasError) {
              return Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text('Error: ${snapshot.error}'),
              );
            }
            // if there is no events
            if (!snapshot.hasData) {
              return const Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Text('No event has been added yet.'),
              );
            }

            // otherwise, store list of documents inside 'events' list
            // similar to list of Json document objects each as event
            final events = snapshot.data!.docs;

            return SizedBox(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: events.length,
                itemBuilder: (context, index) {
                  return EventCard(
                    event: events[index],
                  );
                },
              ),
            );
          },
        ),
        const HeaderSection(
          text: 'Most Viewed events',
        ),
        StreamBuilder<QuerySnapshot>(
          // Live listening of firestore changes
          stream: FirebaseFirestore.instance.collection('Events').snapshots(),
          // if any change occur in stream: path, update below widget after checking or validating
          builder: (context, snapshot) {
            // if any error occurs while retrieving events data
            if (snapshot.hasError) {
              return Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text('Error: ${snapshot.error}'),
              );
            }
            // if there is no events
            if (!snapshot.hasData) {
              return const Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Text('No event has been added yet.'),
              );
            }

            // otherwise, store list of documents inside 'events' list
            // similar to list of Json document objects each as event
            final events = snapshot.data!.docs;

            return SizedBox(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: events.length,
                itemBuilder: (context, index) {
                  return EventCard(
                    event: events[index],
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
