import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_card.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/events_row.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/header_section.dart';
import 'package:kfupm_events/src/routing/routes.dart';

class BookmarkedEvents extends StatelessWidget {
  const BookmarkedEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: HeaderSection(
              text: 'Bookmarked Events',
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 70),
          //   child: Text(
          //     'You dont have any bookmarked events',
          //     textAlign: TextAlign.center,
          //     style: TextStyle(color: Colors.grey[600]),
          //   ),
          // ),
          EventsRow(
            eventsList: [
              EventCard(eventPage: AppRoute.event.name),
            ],
          ),
        ],
      ),
    );
  }
}
