// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/constants/constants.dart';
import 'package:intl/intl.dart';

class EventDate extends StatelessWidget {
  const EventDate({
    Key? key,
    required this.date,
  }) : super(key: key);
  final String date;

  @override
  Widget build(BuildContext context) {
    DateTime convertedDate = DateTime.parse(date);
    String formattedMonth = DateFormat('MMM').format(convertedDate);
    String formattedDay = DateFormat('dd').format(convertedDate);
    return Positioned(
      left: 8,
      top: 11,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          width: 43,
          height: 43,
          child: Column(
            children: [
              Container(
                height: 20,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: kGreenColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      formattedMonth,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                formattedDay,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          )),
    );
  }
}
