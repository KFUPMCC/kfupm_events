import 'package:flutter/material.dart';
import 'package:kfupm_events/src/constants/constants.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class NeedAccount extends StatelessWidget {
  const NeedAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account ?",
          style: TextStyle(
            fontSize: 13,
            color: Provider.of<DarkNotifier>(context).blackLight_whiteDark,
          ),
        ),
        TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => const SignUpPop(),
            );
          },
          child: const Text(
            'Click here',
            style: TextStyle(fontSize: 13, color: Colors.blue),
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
        color: Provider.of<DarkNotifier>(context).backgroundColor,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'To get an account,\n please send a request to: \n "kfupm-events@gmail.com" \n\n Note that we primarily accept requests from club presidents, faculty members and organizers.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: Provider.of<DarkNotifier>(context).blackLight_whiteDark,
              ),
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
