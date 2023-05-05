// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:kfupm_events/src/features/events/data/events_data.dart';

import 'package:kfupm_events/src/features/events/presentation/eventInfo/event_info.dart';
import 'package:kfupm_events/src/features/events/presentation/event_head.dart';
import 'package:kfupm_events/src/features/events/presentation/event_reg_bar.dart';
import 'package:kfupm_events/src/features/home/application/type_drawer.dart';
import 'package:kfupm_events/src/routing/routes.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

import '../domain/event.dart';

class EventPage extends StatelessWidget {
  const EventPage({
    Key? key,
    required this.eventIndex,
  }) : super(key: key);
  final String eventIndex;

  @override
  Widget build(BuildContext context) {
    final int indexPage = int.parse(eventIndex);
    final screenHeight = MediaQuery.of(context).size.height;
    final Event eventObject =
        Provider.of<EventsDataNotifier>(context).events[indexPage];
    return Scaffold(
      body: Stack(
        children: [
          // header part of event page
          Container(
            width: double.infinity,
            height: screenHeight * 0.3,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.only(
              //     bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage(eventObject.image),
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
                    TypeDrawer(eventObject.type),
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
                        host: eventObject.host,
                        title: eventObject.title,
                        logoURL: eventObject.hostLogo,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 70),
                        child: EventInfo(
                            date: eventObject.date,
                            time: eventObject.time,
                            location: eventObject.building,
                            locationURL: eventObject.buildingURL,
                            agenda: eventObject.agenda),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: EventReg(
                    seatNumber: eventObject.seats,
                    goRegPage: () {
                      context.pushNamed(
                        AppRoute.register.name,
                        params: {
                          'title': eventObject.title,
                          'date': DateFormat('dd MMM yyyy')
                              .format(eventObject.date),
                          'time': eventObject.time.format(context),
                          'location': eventObject.building,
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
