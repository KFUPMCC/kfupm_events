import 'package:flutter/material.dart';
import 'package:kfupm_events/src/constants/constants.dart';

class SetEventDate extends StatefulWidget {
  const SetEventDate({super.key});

  @override
  State<SetEventDate> createState() => _SetEventDateState();
}

class _SetEventDateState extends State<SetEventDate> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '${date.day}/${date.month}/${date.year}',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          SizedBox(
            width: 120,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(kGreenColor),
              ),
              onPressed: () async {
                DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  builder: (BuildContext context, Widget? child) {
                    return Theme(
                      data: ThemeData.light().copyWith(
                        primaryColor: kGreenColor,
                        colorScheme:
                            const ColorScheme.light(primary: kGreenColor),
                      ),
                      child: child ?? const SizedBox.shrink(),
                    );
                  },
                );
                setState(() {
                  if (newDate == null) {
                    return;
                  } else {
                    date = newDate;
                  }
                });
              },
              child: const Text('Select Date'),
            ),
          ),
        ],
      ),
    );
  }
}