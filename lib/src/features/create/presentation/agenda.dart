// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../theme/dark_notifier.dart';

class Agenda extends StatelessWidget {
  const Agenda({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          TextFormField(
            maxLines: 5,
            keyboardType: TextInputType
                .multiline, // Optional, but may be useful to show the number keyboard

            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText:
                  'Example:\n1) Introduction to linkedIn.\n2) How to attract HRs.\n3) .....',
              focusedBorder: null,
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 120,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Provider.of<DarkNotifier>(context).backgroundColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Text(
                    'Agenda',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Provider.of<DarkNotifier>(context)
                            .blackLight_whiteDark),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
