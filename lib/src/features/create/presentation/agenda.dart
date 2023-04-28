// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Agenda extends StatefulWidget {
  const Agenda({
    Key? key,
  }) : super(key: key);

  @override
  State<Agenda> createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
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
            bottom: 110,
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                children: const [
                  Text(
                    'Agenda',
                    style: TextStyle(fontWeight: FontWeight.w600),
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
