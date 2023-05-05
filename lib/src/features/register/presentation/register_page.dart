// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/register/presentation/registerForm/register_form.dart';

import 'package:kfupm_events/src/features/register/presentation/register_bar.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({
    Key? key,
    required this.title,
    required this.location,
    required this.time,
    required this.date,
  }) : super(key: key);
  final String title;
  final String location;
  final String time;
  final String date;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Provider.of<DarkNotifier>(context).backgroundColor,
        body: Stack(
          children: [
            RegisterBar(
              date: date,
              location: location,
              time: time,
              title: title,
            ),
            RegisterForm(
              screenHeight: screenHeight,
            ),
          ],
        ));
  }
}
