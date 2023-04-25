import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/events/presentation/upper_event.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          // header part of event page
          UpperEvent(screenHeight: screenHeight),
        ],
      ),
    );
  }
}
