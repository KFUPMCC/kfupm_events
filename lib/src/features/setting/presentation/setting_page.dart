import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/setting/presentation/setting_bar.dart';
import 'package:kfupm_events/src/features/setting/presentation/setting_menu.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SettingBar(screenHeight: screenHeight),
        const SettingMenu(),
      ],
    );
  }
}
