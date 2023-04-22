import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        Image(
          image: const AssetImage('assets/login_logo.png'),
          width: screenWidth * 0.5,
          height: screenHeight * 0.5,
        ),
        Icon(Icons.person, size: screenWidth * 0.23, color: kGreenColor)
      ],
    );
  }
}
