import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../theme/dark_notifier.dart';
import '../application/show_pop.dart';

class FAQ extends StatelessWidget {
  const FAQ({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showPop(
          14,
          'Frequently asked questions',
          'Q: What is KFUPM Events?\n'
              'A: KFUPM Events is an app that helps you explore and create events at KFUPM. You can discover events happening on campus and create your own events to share with others.\n\n'
              'Q: How can I register for events on KFUPM Events?\n'
              'A: To register for events on KFUPM Events, simply select the event you are interested in and follow the registration instructions provided by the event organizer.\n\n'
              'Q: Can I create my own events on KFUPM Events?\n'
              'A: Yes! KFUPM Events allows you to create and manage your own events. You can add event details, including time, location, and a description, and share your event with others on the app.\n\n'
              'Q: How do I create an event on KFUPM Events?\n'
              'A: To create an event on KFUPM Events, simply click on the "Create Event" button on the home screen and follow the instructions provided. You will be asked to enter event details, including time, location, and a description.\n\n'
              'Q: Who can I contact if I have questions or feedback about KFUPM Events?\n'
              'A: For questions or feedback about KFUPM Events, please contact us at kfupm-events@gmail.com. We are happy to help!,\n\n',
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
                  Icons.format_quote_outlined,
                  size: 25,
                  color:
                      Provider.of<DarkNotifier>(context).blackLight_whiteDark,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'FAQs',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Provider.of<DarkNotifier>(context)
                          .blackLight_whiteDark),
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
