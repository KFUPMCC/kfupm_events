// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

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
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Hosted by: $host',
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey),
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
