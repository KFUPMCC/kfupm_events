// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_card.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/header_section.dart';
import 'package:provider/provider.dart';

import '../../application/date_compare.dart';
import '../../application/type_filter.dart';
import '../../data/button_filter_notifier.dart';

class WeekEvents extends StatefulWidget {
  const WeekEvents({
    Key? key,
  }) : super(key: key);

  @override
  State<WeekEvents> createState() => _WeekEventsState();
}

class _WeekEventsState extends State<WeekEvents> {
  int dd = 0;
  @override
  Widget build(BuildContext context) {
    DateTime todayDate = DateTime.now();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                itemCount: Provider.of<ButtonFilterNotifier>(context)
                        .checkAllOff()
                    ? events.length
                    : events
                        .where((event) => TypeFilter(context, event['type']))
                        .length,
                itemBuilder: (context, index) {
                  final List<QueryDocumentSnapshot<Object?>> filteredEvents;
                  if (Provider.of<ButtonFilterNotifier>(context)
                      .checkAllOff()) {
                    filteredEvents = events.reversed.toList();
                  } else {
                    filteredEvents = events.reversed
                        .where((event) => TypeFilter(context, event['type']))
                        .toList();
                  }
                  return EventCard(
                    event: filteredEvents[index],
                  );
                },
              ),
            );
          },
        ),

        const HeaderSection(
          text: 'Events for Today',
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
                itemCount: Provider.of<ButtonFilterNotifier>(context)
                        .checkAllOff()
                    ? events.where((event) => dateCompare(event['date'])).length
                    : events
                        .where((event) =>
                            TypeFilter(context, event['type']) &&
                            dateCompare(event['date']))
                        .length,
                itemBuilder: (context, index) {
                  final List<QueryDocumentSnapshot<Object?>> filteredEvents;
                  if (Provider.of<ButtonFilterNotifier>(context)
                      .checkAllOff()) {
                    filteredEvents = events
                        .where((event) => dateCompare(event['date']))
                        .toList();
                  } else {
                    filteredEvents = events
                        .where((event) =>
                            TypeFilter(context, event['type']) &&
                            dateCompare(event['date']))
                        .toList();
                  }
                  return EventCard(
                    event: filteredEvents[index],
                  );
                },
              ),
            );
          },
        ),
        const HeaderSection(
          text: 'Recommended Events',
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
                itemCount: Provider.of<ButtonFilterNotifier>(context)
                        .checkAllOff()
                    ? events.length
                    : events
                        .where((event) => TypeFilter(context, event['type']))
                        .length,
                itemBuilder: (context, index) {
                  final List<QueryDocumentSnapshot<Object?>> filteredEvents;
                  if (Provider.of<ButtonFilterNotifier>(context)
                      .checkAllOff()) {
                    filteredEvents = events.toList();
                  } else {
                    filteredEvents = events
                        .where((event) => TypeFilter(context, event['type']))
                        .toList();
                  }

                  return EventCard(
                    event: filteredEvents[index],
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
