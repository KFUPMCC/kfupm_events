import 'package:flutter/material.dart';
import 'package:kfupm_events/src/constants/constants.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class AgreeCondition extends StatefulWidget {
  const AgreeCondition({super.key});

  @override
  State<AgreeCondition> createState() => _AgreeConditionState();
}

class _AgreeConditionState extends State<AgreeCondition> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'I agree to the ',
          style: TextStyle(
            color: Provider.of<DarkNotifier>(context).blackLight_whiteDark,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor:
                    Provider.of<DarkNotifier>(context).backgroundColor,
                title: Text(
                  'Terms and conditions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:
                        Provider.of<DarkNotifier>(context).blackLight_whiteDark,
                  ),
                ),
                content: SingleChildScrollView(
                  child: Text(
                    '1. By registering for this event, you agree to abide by the event rules and regulations.\n'
                    '2. You understand that any inappropriate behavior or violation of event rules may result in your removal from the event.\n'
                    '3. You agree to take full responsibility for your own safety during the event.\n'
                    '4. You understand that event organizers reserve the right to make changes to the event schedule, location, or other details without prior notice.\n'
                    '5. By registering for this event, you give permission to event organizers to use any photographs, recordings, or other media taken during the event for promotional purposes.\n'
                    '6. You acknowledge that the event may involve physical activity and you are fully responsible for ensuring your own physical fitness and ability to participate.\n'
                    '7. You agree to respect the privacy and personal information of other attendees and event staff. Any misuse or sharing of personal information will not be tolerated and may result in legal action.\n',
                    style: TextStyle(
                        color: Provider.of<DarkNotifier>(context)
                            .blackLight_whiteDark),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'close',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kGreenColor,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          child: Text(
            'Terms and conditions ',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Provider.of<DarkNotifier>(context).blackLight_whiteDark,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Text(
          '*',
          style: TextStyle(
            color: Colors.red,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        Transform.scale(
          scale: 0.8,
          child: Checkbox(
            activeColor: kGreenColor,
            value: isChecked,
            fillColor: MaterialStateProperty.resolveWith((states) {
              // Change the background color based on the state of the widget
              if (states.contains(MaterialState.selected)) {
                return kGreenColor;
              }
              return Provider.of<DarkNotifier>(context).blackLight_whiteDark;
            }),
            onChanged: (bool? value) {
              setState(
                () {
                  isChecked = value;
                },
              );
            },
          ),
        )
      ],
    );
  }
}
