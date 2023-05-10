import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/home/presentation/upper/filter_button.dart';
import 'package:provider/provider.dart';

import '../../data/button_filter_notifier.dart';

class FilteringButtons extends StatelessWidget {
  const FilteringButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 30,
        ),
        FilterButton(
          icon: const Icon(Icons.sports_basketball),
          name: 'Sport',
          colorState: Provider.of<ButtonFilterNotifier>(context).sport,
          function: () {
            Provider.of<ButtonFilterNotifier>(context, listen: false)
                .enableDisableFilter('sport');
          },
        ),
        const SizedBox(
          width: 10,
        ),
        FilterButton(
          icon: const Icon(Icons.book),
          name: 'Short Course',
          colorState: Provider.of<ButtonFilterNotifier>(context).shortCourse,
          function: () {
            Provider.of<ButtonFilterNotifier>(context, listen: false)
                .enableDisableFilter('shortCourse');
          },
        ),
        const SizedBox(
          width: 10,
        ),
        FilterButton(
          icon: const Icon(Icons.party_mode),
          name: 'Festival',
          colorState: Provider.of<ButtonFilterNotifier>(context).festival,
          function: () {
            Provider.of<ButtonFilterNotifier>(context, listen: false)
                .enableDisableFilter('festival');
          },
        ),
        const SizedBox(
          width: 10,
        ),
        FilterButton(
          icon: const Icon(Icons.work),
          name: 'Workshop',
          colorState: Provider.of<ButtonFilterNotifier>(context).workshop,
          function: () {
            Provider.of<ButtonFilterNotifier>(context, listen: false)
                .enableDisableFilter('workshop');
          },
        ),
        const SizedBox(
          width: 10,
        ),
        FilterButton(
          icon: const Icon(Icons.quiz),
          name: 'Exam',
          colorState: Provider.of<ButtonFilterNotifier>(context).exam,
          function: () {
            Provider.of<ButtonFilterNotifier>(context, listen: false)
                .enableDisableFilter('exam');
          },
        ),
        const SizedBox(
          width: 30,
        ),
      ],
    );
  }
}
