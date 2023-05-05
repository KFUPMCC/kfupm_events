import 'package:flutter/material.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

import '../application/show_pop.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showPop(
          14,
          'Here are some details about the app:\n',
          'Version: 1.0.0\n'
              'Release data: Aug 1, 2023\n'
              'Developer: KFUPM Computer club\n'
              'Supported platforms: IOS and Android\n'
              'Features: Event creation and registration, event discovery, event reminders\n\n'
              'We hope you enjoy using our app! If you have any feedback or suggestions, please let us know',
          context,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.info_outline,
                  size: 25,
                  color:
                      Provider.of<DarkNotifier>(context).blackLight_whiteDark,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Info',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color:
                        Provider.of<DarkNotifier>(context).blackLight_whiteDark,
                  ),
                )
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Provider.of<DarkNotifier>(context).blackLight_whiteDark,
            ),
          ],
        ),
      ),
    );
  }
}
