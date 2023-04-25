// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HostLogo extends StatelessWidget {
  const HostLogo({
    Key? key,
    required this.logoURL,
  }) : super(key: key);
  final String logoURL;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      left: 210,
      child: Container(
        width: 50,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(14)),
          image: DecorationImage(
            image: AssetImage(logoURL),
          ),
        ),
      ),
    );
  }
}
