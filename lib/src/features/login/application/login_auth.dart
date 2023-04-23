import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kfupm_events/src/routing/routes.dart';

import '../../../constants/constants.dart';

Future<void> logInAuth(TextEditingController email,
    TextEditingController password, BuildContext context) async {
  try {
    final UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: email.text.trim(), password: password.text.trim());
    context.goNamed(AppRoute.events.name);
    // Login successful, navigate to next page or perform additional actions
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Login Failed',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          content: const Text(
            'No user found for that email.',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kGreenColor)),
            ),
          ],
        ),
      );
    } else if (e.code == 'wrong-password') {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Login Failed',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          content: const Text(
            'Wrong password provided for that user.',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'OK',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: kGreenColor),
              ),
            ),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Wrong Input',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          content: const Text(
            'Please fill your email and passwords correctly',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kGreenColor)),
            ),
          ],
        ),
      );
    }
  }
}
