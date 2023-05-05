// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class EventTitle extends StatelessWidget {
  const EventTitle({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 58,
      top: 10,
      child: SizedBox(
        height: 30,
        width: 170,
        child: Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Provider.of<DarkNotifier>(context).blackLight_whiteDark,
          ),
        ),
      ),
    );
  }
}
