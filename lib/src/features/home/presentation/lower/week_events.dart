// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_card.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/events_row.dart';
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
      children: const [
        HeaderSection(
          text: 'Recommended events',
        ),
        EventsRow(
          eventsList: [
            EventCard(),
            EventCard(),
            EventCard(),
            EventCard(),
          ],
        ),
        HeaderSection(
          text: 'Recently added events',
        ),
        EventsRow(
          eventsList: [
            EventCard(),
            EventCard(),
            EventCard(),
            EventCard(),
          ],
        ),
        HeaderSection(
          text: 'Most Viewed events',
        ),
        EventsRow(
          eventsList: [
            EventCard(),
            EventCard(),
            EventCard(),
            EventCard(),
          ],
        ),
      ],
    );
  }
}
