import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants/constants.dart';
import '../../../theme/dark_notifier.dart';

void showPop(double size,String header, String body, BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: Provider.of<DarkNotifier>(context).backgroundColor,
      title: Text(
        header,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Provider.of<DarkNotifier>(context).blackLight_whiteDark,
        ),
      ),
      content: SingleChildScrollView(
        child: Text(
          body,
          style: TextStyle(
            color: Provider.of<DarkNotifier>(context).blackLight_whiteDark,
            fontWeight: FontWeight.w200,
            fontSize: size,
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(
            'close',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: kGreenColor,
            ),
          ),
        ),
      ],
    ),
  );
}
