// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/constants/constants.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class AgendaInfo extends StatelessWidget {
  const AgendaInfo({
    Key? key,
    required this.agenda,
  }) : super(key: key);
  final String agenda;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                child: const Icon(Icons.assignment_add, color: Colors.white),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Agenda',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:
                      Provider.of<DarkNotifier>(context).blackLight_whiteDark,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Wrap(
              children: [
                Text(
                  agenda,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color:
                        Provider.of<DarkNotifier>(context).blackLight_whiteDark,
                    fontSize: 14,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
