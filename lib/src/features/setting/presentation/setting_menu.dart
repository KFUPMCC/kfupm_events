import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/setting/presentation/contact_us.dart';
import 'package:kfupm_events/src/features/setting/presentation/dark_mode.dart';
import 'package:kfupm_events/src/features/setting/presentation/faq.dart';
import 'package:kfupm_events/src/features/setting/presentation/info.dart';
import 'package:kfupm_events/src/features/setting/presentation/notifications.dart';
import 'package:kfupm_events/src/features/setting/presentation/setting_divider.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class SettingMenu extends StatelessWidget {
  const SettingMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Provider.of<DarkNotifier>(context).backgroundColor,
      width: double.infinity,
      height: MediaQuery.of(context).size.height -
          MediaQuery.of(context).size.height * 0.13 -
          60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const DarkMode(),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 50, bottom: 10),
                child: Text(
                  'User Preference',
                  //textAlign: TextAlign.left,
                  style: TextStyle(
                    color:
                        Provider.of<DarkNotifier>(context).blackLight_whiteDark,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              const Notifications(),
              const SettingDivider(),
              const FAQ(),
              const SettingDivider(),
              const ContactUs(),
              const SettingDivider(),
              const Info(),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ],
          ),
          Text(
            'Version 1.0.0\n Computer Club PD Team',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Provider.of<DarkNotifier>(context).greyLight_whiteDark,),
          )
        ],
      ),
    );
  }
}
