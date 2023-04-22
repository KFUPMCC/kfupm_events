import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/login/presentation/id_field.dart';
import 'package:kfupm_events/src/features/login/presentation/keep_login.dart';
import 'package:kfupm_events/src/features/login/presentation/login_button.dart';
import 'package:kfupm_events/src/features/login/presentation/login_logo.dart';
import 'package:kfupm_events/src/features/login/presentation/password_field.dart';
import '../../../constants/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    bool keepLogin = false;

    return Scaffold(
      //total background
      body: Container(
        //background design
        decoration: const BoxDecoration(
          color: kGreenColor,
        ),
        child: Center(
          // white middle
          child: Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.4,
            // white middle box design
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // logo
                const Positioned(
                  left: 57,
                  top: -220,
                  child: LoginLogo(),
                ),
                //login credintials
                Column(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // KFUPM ID field
                    IdField(),
                    SizedBox(
                      height: 30,
                    ),
                    // Password field
                    PasswordField(),
                    // checkbox field
                    KeepLogin(),
                    // Login button
                    SizedBox(
                      height: 10,
                    ),
                    LoginButton(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
