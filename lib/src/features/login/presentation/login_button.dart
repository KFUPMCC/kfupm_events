// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kfupm_events/src/constants/constants.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.login,
  }) : super(key: key);
  final VoidCallback login;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: login,
      style: ElevatedButton.styleFrom(
        backgroundColor: kGreenColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      ),
      child: SizedBox(
        width: screenWidth * 0.3,
        height: 35,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Login',
              style: TextStyle(fontSize: 21),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
