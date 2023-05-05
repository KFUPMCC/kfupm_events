import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/setting/application/show_pop.dart';
import 'package:provider/provider.dart';

import '../../../theme/dark_notifier.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showPop(
          18,
          'Got a question or feedback for us?\nWe would love to hear from you!\n',
          'Email: \n( kfupm-events@gmail.com )\n\n'
              'Phone: \n( +966 53 209 7215 )\n\n'
              'Twitter: \n( kfupm_events_app )\n',
          context,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.contact_support_outlined,
                  size: 25,
                  color:
                      Provider.of<DarkNotifier>(context).blackLight_whiteDark,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Contact Us',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color:
                        Provider.of<DarkNotifier>(context).blackLight_whiteDark,
                  ),
                )
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Provider.of<DarkNotifier>(context).blackLight_whiteDark,
            ),
          ],
        ),
      ),
    );
  }
}
