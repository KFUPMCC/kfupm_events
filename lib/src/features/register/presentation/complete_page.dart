import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kfupm_events/src/common_widgets/navigate_button.dart';
import 'package:kfupm_events/src/constants/constants.dart';
import 'package:kfupm_events/src/routing/routes.dart';

class CompletePage extends StatelessWidget {
  const CompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Thank you for your registration',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: kGreenColor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'We will shortly contact you with further details',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: kGreenColor, fontSize: 16, fontWeight: FontWeight.w500),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavigateButton(
                  title: '  Home',
                  widthScale: 0.21,
                  navigatePage: () {
                    context.goNamed(
                      AppRoute.landing.name,
                      params: {'currentIndex': '0'},
                    );
                  },
                ),
                NavigateButton(
                  title: 'My Events',
                  widthScale: 0.25,
                  navigatePage: () {
                    context.goNamed(
                      AppRoute.landing.name,
                      params: {'currentIndex': '2'},
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
