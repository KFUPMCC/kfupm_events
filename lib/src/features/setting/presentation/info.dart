import 'package:flutter/material.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
