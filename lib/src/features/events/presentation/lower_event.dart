import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/events/presentation/eventInfo/event_info.dart';
import 'package:kfupm_events/src/features/events/presentation/event_head.dart';

class LowerEvent extends StatelessWidget {
  const LowerEvent({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenHeight * 0.7,
      margin: const EdgeInsets.only(top: 220),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const EventHead(
              host: 'نادي الحاسب الآلي',
              title: 'The Power of LinkedIn',
              logoURL: 'assets/host_logo.jpg'),
          EventInfo(
            date: DateTime(2023, 2, 13),
            time: const TimeOfDay(hour: 19, minute: 30),
          ),
          // EventAgenda(),
          // EventReg(),
        ],
      ),
    );
  }
}
