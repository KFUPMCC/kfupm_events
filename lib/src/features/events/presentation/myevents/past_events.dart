import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/header_section.dart';

class PastEvents extends StatelessWidget {
  const PastEvents({super.key});

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
              text: 'Past Events',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 70,
              bottom: 70,
              left: 30,
            ),
            child: Text(
              'You dont have not attend any events yet',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          // EventsRow(
          //   eventsList: [
          //     // EventCard(eventPage: AppRoute.event.name),
          //     // EventCard(eventPage: AppRoute.event.name),
          //   ],
          // ),
        ],
      ),
    );
  }
}
