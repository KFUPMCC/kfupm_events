
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WeekTab extends StatefulWidget {
  const WeekTab({
    Key? key,
    required this.number,
  }) : super(key: key);
  final int number;

  @override
  State<WeekTab> createState() => _WeekTabState();
}

class _WeekTabState extends State<WeekTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      height: 40,
      width: 40,
      padding: const EdgeInsets.all(0),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text('Week\n${widget.number}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
