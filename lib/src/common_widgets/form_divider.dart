import 'package:flutter/material.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Divider(
        color: Provider.of<DarkNotifier>(context).greyLight_blackDark,
      ),
    );
  }
}
