import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kfupm_events/src/features/events/presentation/eventInfo/event_info.dart';
import 'package:kfupm_events/src/features/events/presentation/event_head.dart';
import 'package:kfupm_events/src/features/events/presentation/event_reg_bar.dart';
import 'package:kfupm_events/src/routing/routes.dart';

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
      height: screenHeight * 0.8,
      margin: const EdgeInsets.only(top: 220),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const EventHead(
                  host: 'نادي الحاسب الآلي',
                  title: 'The Power of LinkedIn',
                  logoURL: 'assets/host_logo.jpg',
                  
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 70),
                  child: EventInfo(
                    date: DateTime(2023, 2, 13),
                    time: const TimeOfDay(hour: 19, minute: 30),
                    location: 'Building 70',
                    locationURL: 'https://goo.gl/maps/BCNAGcnpVSEdXVZLA',
                    agenda: '- Building the perfect Profile page\n'
                        '- What to share and what to not? Best way to share it\n'
                        '- Linking what you want with what companies search for\n'
                        '- How to expand your connections?\n'
                        '- How to benefit from your connections? How to respond to offers?\n'
                        '- Building the perfect Profile page\n'
                        '- What to share and what to not? Best way to share it\n'
                        '- Linking what you want with what companies search for\n'
                        '- How to expand your connections?\n'
                        '- How to benefit from your connections? How to respond to offers?\n'
                        '- Building the perfect Profile page\n'
                        '- What to share and what to not? Best way to share it\n'
                        '- Linking what you want with what companies search for\n'
                        '- How to expand your connections?\n'
                        '- How to benefit from your connections? How to respond to offers?\n',
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
              seatNumber: 450,
              goRegPage: () {
                context.pushNamed(AppRoute.register.name);
              },
            ),
          ),
        ],
      ),
    );
  }
}
