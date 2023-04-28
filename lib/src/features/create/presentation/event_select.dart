import 'package:flutter/material.dart';
import 'package:kfupm_events/src/constants/constants.dart';

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
        const Padding(
          padding: EdgeInsets.only(
            bottom: 10,
          ),
          child: Text(
            'Event Type',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(5)),
          child: DropdownButton<String>(
            value: selectedType,
            items: allEventTypes
                .map(
                  (item) => DropdownMenuItem<String>(
                    value: item,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Text(
                        item,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
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
