import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/home/presentation/filter_button.dart';

class FilteringButtons extends StatelessWidget {
  const FilteringButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        SizedBox(
          width: 30,
        ),
        FilterButton(
          icon: Icon(Icons.sports_basketball),
          name: 'Sport',
        ),
        SizedBox(
          width: 10,
        ),
        FilterButton(
          icon: Icon(Icons.book),
          name: 'Short Course',
        ),
        SizedBox(
          width: 10,
        ),
        FilterButton(
          icon: Icon(Icons.party_mode),
          name: 'Festival',
        ),
        SizedBox(
          width: 10,
        ),
        FilterButton(
          icon: Icon(Icons.work),
          name: 'Workshop',
        ),
        SizedBox(
          width: 10,
        ),
        FilterButton(
          icon: Icon(Icons.quiz),
          name: 'Exam',
        ),
        SizedBox(
          width: 30,
        ),
      ],
    );
  }
}
