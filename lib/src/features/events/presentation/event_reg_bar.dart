// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kfupm_events/src/constants/constants.dart';

class EventReg extends StatelessWidget {
  const EventReg({
    Key? key,
    required this.seatNumber,
    required this.goRegPage,
  }) : super(key: key);
  final int seatNumber;
  final VoidCallback goRegPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Avaliable seats:',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '$seatNumber',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: goRegPage,
            child: Container(
              width: 140,
              height: 40,
              decoration: BoxDecoration(
                color: kGreenColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 12.0, right: 12),
                    child: Text(
                      'Register Now',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 14)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
