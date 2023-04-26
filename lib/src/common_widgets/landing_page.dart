import 'package:flutter/material.dart';
import 'package:kfupm_events/src/constants/constants.dart';
import 'package:kfupm_events/src/features/events/presentation/myevents/myevents_page.dart';
import 'package:kfupm_events/src/features/home/presentation/home_page.dart';
import 'package:kfupm_events/src/features/login/presentation/login_page.dart';
import 'package:kfupm_events/src/features/setting/presentation/setting_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;
  final List<Widget> body = [
    const HomePage(),
    const LoginPage(),
    const MyEvents(),
    const SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kGreenColor,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (int newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Create Event',
            icon: Icon(Icons.add),
          ),
          BottomNavigationBarItem(
            label: 'My Events',
            icon: Icon(Icons.bookmark),
          ),
          BottomNavigationBarItem(
            label: 'Setting',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
