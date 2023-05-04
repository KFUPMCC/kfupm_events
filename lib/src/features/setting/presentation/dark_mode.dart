import 'package:flutter/material.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class DarkMode extends StatelessWidget {
  const DarkMode({super.key});

  @override
  Widget build(BuildContext context) {
    bool hello = false;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Switch to Dark Mode',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Transform.scale(
          scale: 1.5,
          child: Consumer<DarkNotifier>(
            builder: (context, notifier, child) {
              return Switch(
                inactiveThumbImage: const AssetImage('assets/toggle_off.jpg'),
                activeThumbImage: const AssetImage('assets/toggle_on.jpg'),
                activeColor: Colors.blue[900],
                inactiveTrackColor: Colors.blue[100],
                value: notifier.isDark,
                onChanged: (value) {
                  notifier.changeTheme();
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
