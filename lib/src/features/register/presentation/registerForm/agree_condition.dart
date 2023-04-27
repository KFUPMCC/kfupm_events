import 'package:flutter/material.dart';
import 'package:kfupm_events/src/constants/constants.dart';

class AgreeCondition extends StatefulWidget {
  const AgreeCondition({super.key});

  @override
  State<AgreeCondition> createState() => _AgreeConditionState();
}

class _AgreeConditionState extends State<AgreeCondition> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: Row(
        children: [
          const Text(
            'I agree to the ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Terms and conditions',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  content: SingleChildScrollView(
                    child: Column(
                      children: const [
                        Text(
                          'Terms and Conditions:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '1. By registering for this event, you agree to abide by the event rules and regulations.',
                        ),
                        SizedBox(height: 5),
                        Text(
                          '2. You understand that any inappropriate behavior or violation of event rules may result in your removal from the event.',
                        ),
                        SizedBox(height: 5),
                        Text(
                          '3. You agree to take full responsibility for your own safety during the event.',
                        ),
                        SizedBox(height: 5),
                        Text(
                          '4. You understand that event organizers reserve the right to make changes to the event schedule, location, or other details without prior notice.',
                        ),
                        SizedBox(height: 5),
                        Text(
                          '5. By registering for this event, you give permission to event organizers to use any photographs, recordings, or other media taken during the event for promotional purposes.',
                        ),
                        SizedBox(height: 10),
                        Text(
                          '6. You acknowledge that the event may involve physical activity and you are fully responsible for ensuring your own physical fitness and ability to participate.',
                        ),
                        SizedBox(height: 5),
                        Text(
                          '7. You agree to respect the privacy and personal information of other attendees and event staff. Any misuse or sharing of personal information will not be tolerated and may result in legal action.',
                        ),
                      ],
                    ),
                  ),
                  actionsAlignment: MainAxisAlignment.center,
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('close',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: kGreenColor)),
                    ),
                  ],
                ),
              );
            },
            child: const Text(
              'Terms and conditions ',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.black,
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
                onChanged: (bool? value) {
                  setState(
                    () {
                      isChecked = value;
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
