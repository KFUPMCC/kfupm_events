import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IdField extends StatelessWidget {
  const IdField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          TextField(
            keyboardType: TextInputType
                .number, // Optional, but may be useful to show the number keyboard
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(
                  RegExp(r'[0-9]')), // Only allows digits 0-9
            ],
            decoration: InputDecoration(
              hintText: 'Ex: 201953850',
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
                'KFUPM ID',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
