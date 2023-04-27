// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kfupm_events/src/constants/constants.dart';
import 'package:kfupm_events/src/features/events/presentation/myevents/myevents_page.dart';
import 'package:kfupm_events/src/features/home/presentation/home_page.dart';
import 'package:kfupm_events/src/features/login/presentation/login_page.dart';
import 'package:kfupm_events/src/features/setting/presentation/setting_page.dart';

class LandingPage extends StatefulWidget {
  LandingPage({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);
  int currentIndex;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final List<Widget> body = [
    const HomePage(),
    const LoginPage(),
    const MyEvents(),
    const SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[widget.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kGreenColor,
        unselectedItemColor: Colors.grey,
        currentIndex: widget.currentIndex,
        onTap: (int newIndex) {
          setState(() {
            widget.currentIndex = newIndex;
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
