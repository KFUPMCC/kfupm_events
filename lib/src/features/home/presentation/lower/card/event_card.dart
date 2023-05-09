// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kfupm_events/src/features/events/data/events_data.dart';

import 'package:kfupm_events/src/features/home/presentation/lower/card/event_date.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_loaction.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_time.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_title.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_type.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/head_image.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/host_logo.dart';
import 'package:kfupm_events/src/routing/routes.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.event,
  }) : super(key: key);
  final QueryDocumentSnapshot<Object?> event;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Provider.of<EventsDataNotifier>(context, listen: false)
                .eventSaver(event);
            context.pushNamed(
              AppRoute.event.name,
              params: {
                'eventIndex': 1.toString(),
              },
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              width: 270,
              height: 180,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 8,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Provider.of<DarkNotifier>(context).greyLight_blackDark,
                //border: Border.all(width: 0.2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  HeadImage(imageURL: event['image']),
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        HostLogo(logoURL: event['hostLogo']),
                        EventTitle(title: event['title']),
                        EventType(type: event['type']),
                        EventLocation(location: event['building']),
                        EventTime(formattedTime: event['time']),
                        EventDate(date: event['date']),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
