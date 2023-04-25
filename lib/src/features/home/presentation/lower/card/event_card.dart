// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:kfupm_events/src/features/events/domain/etype.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_date.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_loaction.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_time.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_title.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_type.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/head_image.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/host_logo.dart';
import 'package:kfupm_events/src/routing/routes.dart';

class EventCard extends StatefulWidget {
  const EventCard({
    Key? key,
    required this.eventPage,
  }) : super(key: key);
  final String eventPage;

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(widget.eventPage);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          width: 270,
          height: 180,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            //border: Border.all(width: 0.2),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              const HeadImage(imageURL: 'assets/card.png'),
              SizedBox(
                width: double.infinity,
                height: 70,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const HostLogo(logoURL: 'assets/host_logo.jpg'),
                    const EventTitle(title: 'The Power of LinkedIn'),
                    const EventType(type: EType.workShop),
                    const EventLocation(location: 'Building 70'),
                    const EventTime(time: TimeOfDay(hour: 19, minute: 0)),
                    EventDate(date: DateTime(2023, 2, 13)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
