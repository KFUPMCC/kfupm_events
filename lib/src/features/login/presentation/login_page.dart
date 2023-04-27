import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/login/application/login_auth.dart';
import 'package:kfupm_events/src/common_widgets/input_field.dart';
import 'package:kfupm_events/src/features/login/presentation/need_account.dart';
import 'package:kfupm_events/src/features/login/presentation/login_button.dart';
import 'package:kfupm_events/src/features/login/presentation/login_logo.dart';
import 'package:kfupm_events/src/features/login/presentation/password_field.dart';
import '../../../constants/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Email password authintication
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

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
                Form(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 30),
                        child: Text(
                          "Log in to your organizer account before creating an event.",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      // KFUPM ID field
                      InputField(
                        controller: emailController,
                        inputHint: 's20xxxxxx@kfupm.edu.sa',
                        inputName: 'Email',
                        type: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // Password field
                      PasswordField(controller: passwordController),
                      // checkbox field
                      const NeedAccount(),
                      // Login button
                      const SizedBox(
                        height: 10,
                      ),
                      LoginButton(
                        login: () => logInAuth(
                            emailController, passwordController, context),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
