
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:kfupm_events/src/constants/constants.dart';

class CreateBar extends StatelessWidget {
  const CreateBar({
    Key? key,
    // required this.title,
    // required this.location,
    // required this.time,
    // required this.date,
  }) : super(key: key);
  // final String title;
  // final String location;
  // final String time;
  // final String date;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: screenHeight * 0.25,
      decoration: const BoxDecoration(
        color: kGreenColor,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
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
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              'Complete the creation form',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              'Customize every detail of your event to meet your needs',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
