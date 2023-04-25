// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class EventTime extends StatelessWidget {
  const EventTime({
    Key? key,
    required this.time,
  }) : super(key: key);
  final TimeOfDay time;

  @override
  Widget build(BuildContext context) {
    String formattedTime = time.format(context);
    return Positioned(
      left: 50,
      top: 35,
      child: SizedBox(
          width: 130,
          height: 20,
          child: Row(
            children: [
              const Icon(Icons.access_time, color: Colors.black, size: 13),
              const SizedBox(
                width: 2,
              ),
              SizedBox(
                width: 90,
                child: Text(
                  'Time: $formattedTime',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          )),
    );
  }
}
