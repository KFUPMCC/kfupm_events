import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/home/presentation/home_lower.dart';
import 'package:kfupm_events/src/features/home/presentation/home_upper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        // Green home part
        HomeUpper(),
        // Events white part
        HomeLower(),
      ],
    );
  }
}
