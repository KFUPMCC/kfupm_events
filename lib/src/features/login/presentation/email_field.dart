// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class EmailField extends StatefulWidget {
  const EmailField({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          TextFormField(
            controller: widget.controller,
            keyboardType: TextInputType
                .emailAddress, // Optional, but may be useful to show the number keyboard

            decoration: InputDecoration(
              hintText: 's20xxxxx@kfupm.edu.sa',
              focusedBorder: null,
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 39,
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: const Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
