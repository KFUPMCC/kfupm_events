import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/login/presentation/email_field.dart';
import 'package:kfupm_events/src/features/login/presentation/need_account.dart';
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
      appBar: AppBar(
        backgroundColor: kGreenColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
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
            height: screenHeight * 0.5,
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
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40.0, vertical: 30),
                      child: Text(
                        "Log in to your organizer account before creating an event.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    // KFUPM ID field
                    EmailField(),
                    SizedBox(
                      height: 30,
                    ),
                    // Password field
                    PasswordField(),
                    // checkbox field
                    NeedAccount(),
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
