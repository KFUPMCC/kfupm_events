// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/constants/constants.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);
  final Icon icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: kGreenColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      ),
      onPressed: () {},
      child: Row(
        children: [
          icon,
          const SizedBox(width: 5),
          Text(name),
        ],
      ),
    );
  }
}
