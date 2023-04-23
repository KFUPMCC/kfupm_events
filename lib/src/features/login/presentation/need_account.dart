import 'package:flutter/material.dart';
import 'package:kfupm_events/src/constants/constants.dart';

class NeedAccount extends StatelessWidget {
  const NeedAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account ?", style: TextStyle(fontSize: 13)),
        TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => const SignUpPop(),
            );
          },
          child: const Text(
            'Click here',
            style: TextStyle(fontSize: 13),
          ),
        ),
      ],
    );
  }
}

class SignUpPop extends StatelessWidget {
  const SignUpPop({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'To get an account,\n please send a request to: \n "kfupm-events@gmail.com" \n\n Note that we primarily accept requests from club presidents, faculty members and organizers.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: kGreenColor),
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        ),
      ),
    );
  }
}
