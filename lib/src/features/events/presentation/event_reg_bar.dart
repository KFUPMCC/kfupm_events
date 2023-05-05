// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kfupm_events/src/constants/constants.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

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
      color: Provider.of<DarkNotifier>(context).greyLight_blackDark,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 12,
              ),
              Text(
                'Avaliable seats:',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color:
                      Provider.of<DarkNotifier>(context).blackLight_whiteDark,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '$seatNumber',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color:
                      Provider.of<DarkNotifier>(context).blackLight_whiteDark,
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
