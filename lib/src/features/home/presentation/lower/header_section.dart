// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30.0,
        bottom: 10,
        top: 20,
      ),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Provider.of<DarkNotifier>(context).blackLight_whiteDark,
            fontWeight: FontWeight.bold,
            fontSize: 16),
      ),
    );
  }
}
