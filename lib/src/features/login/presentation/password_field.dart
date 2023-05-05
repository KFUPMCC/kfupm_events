// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;
  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          TextFormField(
            controller: widget.controller,
            obscureText: _obscureText,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
              hintText: '************',
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    if (_obscureText) {
                      _obscureText = false;
                    } else {
                      _obscureText = true;
                    }
                  });
                },
                child: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility),
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
                color: Provider.of<DarkNotifier>(context).backgroundColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Text(
                    'Password',
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
