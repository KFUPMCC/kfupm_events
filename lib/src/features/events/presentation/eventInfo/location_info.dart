// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:kfupm_events/src/constants/constants.dart';

class LocationInfo extends StatelessWidget {
  const LocationInfo({
    Key? key,
    required this.location,
    required this.locationURL,
  }) : super(key: key);
  final String location;
  final String locationURL;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: const BoxDecoration(
                  color: kGreenColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Icon(Icons.location_on, color: Colors.white),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'KFUPM Campus',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    location,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: (BorderRadius.circular(30)),
            ),
            child: IconButton(
              onPressed: () async {
                await launchUrl(
                  Uri.parse(locationURL),
                );
              },
              icon: const Icon(Icons.gps_fixed, color: kGreenColor),
            ),
          )
        ],
      ),
    );
  }
}
