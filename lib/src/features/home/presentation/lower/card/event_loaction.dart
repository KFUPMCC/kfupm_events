// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class EventLocation extends StatelessWidget {
  const EventLocation({
    Key? key,
    required this.location,
  }) : super(key: key);
  final String location;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 160,
      top: 35,
      child: SizedBox(
          width: 130,
          height: 20,
          child: Row(
            children: [
              const Icon(Icons.location_on_outlined,
                  color: Colors.black, size: 13),
              const SizedBox(
                width: 2,
              ),
              SizedBox(
                width: 80,
                child: Text(
                  location,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          )),
    );
  }
}
