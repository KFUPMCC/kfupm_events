// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({
    Key? key,
    required this.controller,
    required this.inputName,
    required this.inputHint,
    required this.type,
  }) : super(key: key);
  final TextEditingController? controller;
  final String inputName;
  final String inputHint;
  final TextInputType type;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          TextFormField(
            controller: widget.controller,
            keyboardType: widget
                .type, // Optional, but may be useful to show the number keyboard

            decoration: InputDecoration(
              hintText: widget.inputHint,
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
              child: Row(
                children: [
                  Text(
                    widget.inputName,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    '*',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.red),
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
