import 'package:flutter/material.dart';
import 'package:kfupm_events/src/constants/constants.dart';
import 'package:provider/provider.dart';

import '../../../theme/dark_notifier.dart';
import '../data/event_time_notifier.dart';

class SetEventTime extends StatefulWidget {
  const SetEventTime({super.key});

  @override
  State<SetEventTime> createState() => _SetEventTimeState();
}

class _SetEventTimeState extends State<SetEventTime> {
  TimeOfDay time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            time.format(context),
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Provider.of<DarkNotifier>(context).blackLight_whiteDark,
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
                TimeOfDay? newTime = await showTimePicker(
                  context: context,
                  initialTime: time,
                  builder: (BuildContext context, Widget? child) {
                    return Theme(
                      data: Provider.of<DarkNotifier>(context).isDark
                          ? ThemeData.dark().copyWith(
                              primaryColor: kGreenColor,
                              textTheme: const TextTheme(),
                              colorScheme: const ColorScheme.dark(
                                  primary: kGreenColor,
                                  primaryContainer: kGreenColor),
                            )
                          : ThemeData.light().copyWith(
                              primaryColor: kGreenColor,
                              colorScheme:
                                  const ColorScheme.light(primary: kGreenColor),
                            ),
                      child: child ?? const SizedBox.shrink(),
                    );
                  },
                );
                setState(() {
                  if (newTime == null) {
                    return;
                  } else {
                    time = newTime;
                    Provider.of<EventTimeNotifier>(context, listen: false)
                        .setEventTime(newTime);
                  }
                });
              },
              child: const Text('Select Time'),
            ),
          ),
        ],
      ),
    );
  }
}
