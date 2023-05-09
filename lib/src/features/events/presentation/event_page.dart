// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:kfupm_events/src/features/events/application/type_converter.dart';
import 'package:kfupm_events/src/features/events/data/events_data.dart';

import 'package:kfupm_events/src/features/events/presentation/eventInfo/event_info.dart';
import 'package:kfupm_events/src/features/events/presentation/event_head.dart';
import 'package:kfupm_events/src/features/events/presentation/event_reg_bar.dart';
import 'package:kfupm_events/src/features/home/application/type_drawer.dart';
import 'package:kfupm_events/src/routing/routes.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class EventPage extends StatelessWidget {
  const EventPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Consumer<EventsDataNotifier>(
        builder: (context, eventNotifier, child) {
          return Stack(
            children: [
              // header part of event page
              Container(
                width: double.infinity,
                height: screenHeight * 0.3,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //     bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                  image: DecorationImage(
                    image: NetworkImage(eventNotifier.event!['image']),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const FaIcon(
                            FontAwesomeIcons.arrowCircleLeft,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        TypeDrawer(
                            fromStringToEType(eventNotifier.event!['type'])),
                        // save
                        IconButton(
                          onPressed: () {
                            //later
                          },
                          icon: const FaIcon(
                            FontAwesomeIcons.bookmark,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Lower part

              Container(
                width: double.infinity,
                height: screenHeight * 0.8,
                margin: const EdgeInsets.only(top: 220),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Provider.of<DarkNotifier>(context).backgroundColor,
                ),
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          EventHead(
                            host: eventNotifier.event!['host'],
                            title: eventNotifier.event!['title'],
                            logoURL: eventNotifier.event!['hostLogo'],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 70),
                            child: EventInfo(
                              date:
                                  DateTime.parse(eventNotifier.event!['date']),
                              time: eventNotifier.event!['time'],
                              location: eventNotifier.event!['building'],
                              locationURL: eventNotifier.event!['buildingURL'],
                              agenda: eventNotifier.event!['agenda'],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: EventReg(
                        seatNumber: eventNotifier.event!['seats'],
                        goRegPage: () {
                          context.pushNamed(
                            AppRoute.register.name,
                            params: {
                              'title': eventNotifier.event!['title'],
                              'date': DateFormat('dd MMM yyyy').format(
                                  DateTime.parse(eventNotifier.event!['date'])),
                              'time': eventNotifier.event!['time'],
                              'location': eventNotifier.event!['building'],
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
