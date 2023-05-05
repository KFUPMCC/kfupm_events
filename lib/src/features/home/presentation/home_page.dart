import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/home/presentation/lower/home_lower.dart';
import 'package:kfupm_events/src/features/home/presentation/upper/home_upper.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Provider.of<DarkNotifier>(context).backgroundColor,
        child: Column(
          children: const [
            // Green home part
            HomeUpper(),
            // Events white part
            HomeLower(),
          ],
        ),
      ),
    );
  }
}
