import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/events/domain/etype.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_loaction.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_time.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_title.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/event_type.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/head_image.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/card/host_logo.dart';

class EventCard extends StatefulWidget {
  const EventCard({super.key});

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: 270,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.grey[200],
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
                children: const [
                  HostLogo(logoURL: 'assets/host_logo.jpg'),
                  EventTitle(title: 'The Power of LinkedIn'),
                  EventType(type: EType.workShop),
                  EventLocation(location: 'Building 70'),
                  EventTime(time: TimeOfDay(hour: 19, minute: 0)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
