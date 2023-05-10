// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kfupm_events/src/constants/constants.dart';

class FilterButton extends StatefulWidget {
  const FilterButton({
    Key? key,
    required this.icon,
    required this.name,
    required this.function,
    required this.colorState,
  }) : super(key: key);
  final Icon icon;
  final String name;
  final VoidCallback function;
  final bool colorState;

  @override
  State<FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.colorState ? kGreenColor : Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      ),
      onPressed: widget.function,
      child: Row(
        children: [
          widget.icon,
          const SizedBox(width: 5),
          Text(widget.name),
        ],
      ),
    );
  }
}
