import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Divider(
        color: Colors.grey,
      ),
    );
  }
}
