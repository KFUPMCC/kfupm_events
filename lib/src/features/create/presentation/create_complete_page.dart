import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kfupm_events/src/common_widgets/navigate_button.dart';
import 'package:kfupm_events/src/constants/constants.dart';
import 'package:kfupm_events/src/routing/routes.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class CreateCompletePage extends StatelessWidget {
  const CreateCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Provider.of<DarkNotifier>(context).backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Thank you for creating an event',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: kGreenColor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Your event submission is under review\n and requires approval before publication.\n We will be in touch with you shortly. \nWe appreciate your patience.',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: kGreenColor, fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 170,
            height: 170,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/complete.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Transform.scale(
            scale: 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavigateButton(
                  title: '  Home',
                  widthScale: 0.21,
                  onClick: () {
                    context.goNamed(
                      AppRoute.landing.name,
                      params: {'currentIndex': '0'},
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
