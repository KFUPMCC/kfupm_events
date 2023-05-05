import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/events/presentation/myevents/bookmarked_events.dart';
import 'package:kfupm_events/src/features/events/presentation/myevents/events_bar.dart';
import 'package:kfupm_events/src/features/events/presentation/myevents/past_events.dart';
import 'package:kfupm_events/src/features/events/presentation/myevents/registered_events.dart';
import 'package:provider/provider.dart';

import '../../../../theme/dark_notifier.dart';

class MyEvents extends StatelessWidget {
  const MyEvents({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Provider.of<DarkNotifier>(context).backgroundColor,
      body: Column(
        children: [
          EventsBar(screenHeight: screenHeight),
          SizedBox(
            width: double.infinity,
            height: screenHeight - screenHeight * 0.13 - 60,
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  BookmarkedEvents(),
                  RegisteredEvents(),
                  PastEvents(),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
