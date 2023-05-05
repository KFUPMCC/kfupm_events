import 'package:flutter/material.dart';
import 'package:kfupm_events/src/constants/constants.dart';
import 'package:provider/provider.dart';

import '../../../theme/dark_notifier.dart';

class EventSelect extends StatefulWidget {
  const EventSelect({super.key});

  @override
  State<EventSelect> createState() => _EventSelectState();
}

class _EventSelectState extends State<EventSelect> {
  List<String> allEventTypes = eventTypes;

  String? selectedType = eventTypes[0];

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: Text(
            'Event Type',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Provider.of<DarkNotifier>(context).blackLight_whiteDark,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
              color: Provider.of<DarkNotifier>(context).greyLight_blackDark,
              borderRadius: BorderRadius.circular(5)),
          child: DropdownButton<String>(
            dropdownColor:
                Provider.of<DarkNotifier>(context).greyLight_blackDark,
            value: selectedType,
            items: allEventTypes
                .map(
                  (item) => DropdownMenuItem<String>(
                    value: item,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Text(
                        item,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Provider.of<DarkNotifier>(context)
                              .blackLight_whiteDark,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
            onChanged: (newValue) {
              setState(
                () {
                  selectedType = newValue;
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
