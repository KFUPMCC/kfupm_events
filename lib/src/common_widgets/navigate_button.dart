// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kfupm_events/src/constants/constants.dart';

class NavigateButton extends StatelessWidget {
  const NavigateButton({
    Key? key,
    required this.widthScale,
    required this.title,
    required this.navigatePage,
  }) : super(key: key);
  final double widthScale;
  final String title;
  final VoidCallback navigatePage;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: navigatePage,
      style: ElevatedButton.styleFrom(
        backgroundColor: kGreenColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      ),
      child: SizedBox(
        width: screenWidth * widthScale,
        height: 30,
        child: Text(
          title,
          style: const TextStyle(fontSize: 21),
        ),
      ),
    );
  }
}
