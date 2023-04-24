import 'package:flutter/material.dart';
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
                  Positioned(
                    bottom: 50,
                    left: 210,
                    child: HostLogo(logoURL: 'assets/host_logo.jpg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
