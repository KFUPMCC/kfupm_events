// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class EventTime extends StatelessWidget {
  const EventTime({
    Key? key,
    required this.formattedTime,
  }) : super(key: key);
  final String formattedTime;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 58,
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
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color:
                        Provider.of<DarkNotifier>(context).blackLight_whiteDark,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
