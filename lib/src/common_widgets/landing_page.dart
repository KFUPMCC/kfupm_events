// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kfupm_events/src/constants/constants.dart';
import 'package:kfupm_events/src/features/events/presentation/myevents/myevents_page.dart';
import 'package:kfupm_events/src/features/home/presentation/home_page.dart';
import 'package:kfupm_events/src/features/login/presentation/login_page.dart';
import 'package:kfupm_events/src/features/setting/presentation/setting_page.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

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
      backgroundColor: Provider.of<DarkNotifier>(context).backgroundColor,
      body: body[widget.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kGreenColor,
        unselectedItemColor:
            Provider.of<DarkNotifier>(context).greyLight_whiteDark,
        currentIndex: widget.currentIndex,
        onTap: (int newIndex) {
          setState(() {
            widget.currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor:
                Provider.of<DarkNotifier>(context).greyLight_blackDark,
            label: 'Home',
            icon: const Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor:
                Provider.of<DarkNotifier>(context).greyLight_blackDark,
            label: 'Create Event',
            icon: const Icon(Icons.add),
          ),
          BottomNavigationBarItem(
            backgroundColor:
                Provider.of<DarkNotifier>(context).greyLight_blackDark,
            label: 'My Events',
            icon: const Icon(Icons.bookmark),
          ),
          BottomNavigationBarItem(
            backgroundColor:
                Provider.of<DarkNotifier>(context).greyLight_blackDark,
            label: 'Setting',
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
