import 'package:flutter/material.dart';
import 'package:kfupm_events/src/constants/constants.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool notificationState = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.notifications_active_outlined,
                  size: 25,
                  color:
                      Provider.of<DarkNotifier>(context).blackLight_whiteDark,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Notifications',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color:
                        Provider.of<DarkNotifier>(context).blackLight_whiteDark,
                  ),
                )
              ],
            ),
            Transform.scale(
              scale: 1.2,
              child: Switch(
                  activeColor: kGreenColor,
                  value: notificationState,
                  onChanged: (value) {
                    setState(() {
                      if (value) {
                        notificationState = true;
                        // enable it method v
                      } else {
                        notificationState = false;
                        // disable it method v
                      }
                    });
                  }),
            )
          ],
        ),
      ),
    );
  }
}
