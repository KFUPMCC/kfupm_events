// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class EventHead extends StatelessWidget {
  const EventHead({
    Key? key,
    required this.title,
    required this.host,
    required this.logoURL,
  }) : super(key: key);
  final String title;
  final String host;
  final String logoURL;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.65,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:
                        Provider.of<DarkNotifier>(context).blackLight_whiteDark,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  'Hosted by: $host',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Provider.of<DarkNotifier>(context)
                          .blackLight_whiteDark),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 17,
          ),
          Container(
            width: 60,
            height: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(logoURL),
                fit: BoxFit.fill,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
