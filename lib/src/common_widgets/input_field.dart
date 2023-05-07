// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

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
              filled: true,
              fillColor: Colors.white,
              hintText: widget.inputHint,
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
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Provider.of<DarkNotifier>(context).backgroundColor,
              ),
              child: Row(
                children: [
                  Text(
                    widget.inputName,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Provider.of<DarkNotifier>(context)
                          .blackLight_whiteDark,
                    ),
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
