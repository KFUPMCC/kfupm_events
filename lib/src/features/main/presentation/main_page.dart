import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kfupm_events/src/routing/routes.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Center(
            child: Text('Main page'),
          ),
          ElevatedButton(
            child: const Text('Create event'),
            onPressed: () {
              // Add your onPressed code here
              context.goNamed(AppRoute.login.name);
            },
          ),
        ],
      ),
    );
  }
}
