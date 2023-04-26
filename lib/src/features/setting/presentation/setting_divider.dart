import 'package:flutter/material.dart';

class SettingDivider extends StatelessWidget {
  const SettingDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Divider(
        color: Colors.grey,
        thickness: 1,
      ),
    );
  }
}
