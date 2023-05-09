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
        StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('Events').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
              if (!snapshot.hasData) {
                return const Text('No event has been added yet.');
              }
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
            }),
        const HeaderSection(
          text: 'Recently added events',
        ),
        // SizedBox(
        //   width: double.infinity,
        //   height: 200,
        //   child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: eventNotifier.events.length,
        //     itemBuilder: (context, index) {
        //       return EventCard(
        //         eventIndex: index,
        //         event: eventNotifier.events[index],
        //       );
        //     },
        //   ),
        // ),
        const HeaderSection(
          text: 'Most Viewed events',
        ),
        // SizedBox(
        //   width: double.infinity,
        //   height: 200,
        //   child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: eventNotifier.events.length,
        //     itemBuilder: (context, index) {
        //       return EventCard(
        //         eventIndex: index,
        //         event: eventNotifier.events[index],
        //       );
        //     },
        //   ),
        // ),
      ],
    );
  }
}
