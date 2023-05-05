// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class NotesField extends StatefulWidget {
  const NotesField({
    Key? key,
  }) : super(key: key);

  @override
  State<NotesField> createState() => _NotesFieldState();
}

class _NotesFieldState extends State<NotesField> {
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
                  'Let us know if there is anything we can do to make your experience better.',
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
                    'Notes (optional)',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Provider.of<DarkNotifier>(context)
                          .blackLight_whiteDark,
                    ),
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
