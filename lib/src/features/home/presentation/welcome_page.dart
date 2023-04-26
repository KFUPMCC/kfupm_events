import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kfupm_events/src/constants/constants.dart';
import 'package:kfupm_events/src/routing/routes.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: kGreenColor),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.3,
            ),
            Container(
              width: 170,
              height: 170,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/app_logo.png'),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.25,
            ),
            GestureDetector(
              onTap: () {
                context.goNamed(AppRoute.landing.name);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Light Mode',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            GestureDetector(
              onTap: () {
                context.goNamed(AppRoute.landing.name);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Dark Mode',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.black,
                    size: 35,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'You can change theme later on the setting',
              style: TextStyle(fontSize: 13, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
