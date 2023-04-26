import 'package:flutter/material.dart';

class DarkMode extends StatefulWidget {
  const DarkMode({super.key});

  @override
  State<DarkMode> createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
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
          child: Switch(
            inactiveThumbImage: const AssetImage('assets/toggle_off.jpg'),
            activeThumbImage: const AssetImage('assets/toggle_on.jpg'),
            activeColor: Colors.blue[900],
            inactiveTrackColor: Colors.blue[100],
            
            value: isDarkMode,
            onChanged: (value) {
              setState(
                () {
                  isDarkMode = value;

                  if (isDarkMode) {
                    // Set your app's theme to dark mode
                  } else {
                    // Set your app's theme to light mode
                  }
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
