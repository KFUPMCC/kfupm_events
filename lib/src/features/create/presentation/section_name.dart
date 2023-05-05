// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class SectionName extends StatelessWidget {
  const SectionName({
    Key? key,
    required this.section,
  }) : super(key: key);
  final String section;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        section,
        style: TextStyle(
          color: Provider.of<DarkNotifier>(context).blackLight_whiteDark,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
