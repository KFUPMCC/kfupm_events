// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:kfupm_events/src/features/home/presentation/lower/card/event_date.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_loaction.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_time.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_title.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_type.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/head_image.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/host_logo.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

import '../../../../../routing/routes.dart';
import '../../../../events/domain/event.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.eventIndex,
    required this.event,
  }) : super(key: key);
  final int eventIndex;
  final Event event;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          AppRoute.event.name,
          params: {
            'eventIndex': eventIndex.toString(),
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          width: 270,
          height: 180,
          decoration: BoxDecoration(
            color: Provider.of<DarkNotifier>(context).greyLight_blackDark,
            //border: Border.all(width: 0.2),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              HeadImage(imageURL: event.image),
              SizedBox(
                width: double.infinity,
                height: 70,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    HostLogo(logoURL: event.hostLogo),
                    EventTitle(title: event.title),
                    EventType(type: event.type),
                    EventLocation(location: event.building),
                    EventTime(time: event.time),
                    EventDate(date: event.date),
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
