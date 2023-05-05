// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kfupm_events/src/constants/constants.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class TimeInfo extends StatelessWidget {
  const TimeInfo({
    Key? key,
    required this.time,
    required this.date,
  }) : super(key: key);
  final TimeOfDay time;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    String formattedTime = time.format(context);
    String formattedDate = DateFormat('dd MMM yyyy').format(date);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: const BoxDecoration(
                  color: kGreenColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child:
                    const Icon(Icons.access_time_outlined, color: Colors.white),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    formattedDate,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Provider.of<DarkNotifier>(context)
                          .greyLight_whiteDark,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    formattedTime,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Provider.of<DarkNotifier>(context)
                          .blackLight_whiteDark,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: (BorderRadius.circular(30)),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.calendar_month, color: kGreenColor),
            ),
          )
        ],
      ),
    );
  }
}
