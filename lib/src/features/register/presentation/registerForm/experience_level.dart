// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:kfupm_events/src/constants/constants.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';

class ExperienceLevel extends StatefulWidget {
  const ExperienceLevel({
    Key? key,
    required this.experience,
  }) : super(key: key);
  final TextEditingController experience;

  @override
  State<ExperienceLevel> createState() => _ExperienceLevelState();
}

class _ExperienceLevelState extends State<ExperienceLevel> {
  double _currentSliderValue = 0;

  final List<String> _labels = [
    'Beginner',
    'Novice',
    'Intermediate',
    'Advanced',
    'Expert'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      // height: 100,
      child: Column(
        children: [
          Column(
            children: [
              Text(
                'How familiar are you with this topic?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color:
                      Provider.of<DarkNotifier>(context).blackLight_whiteDark,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Slider(
                  thumbColor: kGreenColor,
                  activeColor: kGreenColor,
                  value: _currentSliderValue,
                  min: 0,
                  max: 4,
                  divisions: 4,
                  label: _labels[_currentSliderValue.toInt()],
                  onChanged: (double value) {
                    setState(
                      () {
                        _currentSliderValue = value;
                        widget.experience.text =
                            _labels[_currentSliderValue.toInt()];
                      },
                    );
                  },
                ),
              ),
              Text(
                'I am "${_labels[_currentSliderValue.toInt()]}" with this Topic',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color:
                        Provider.of<DarkNotifier>(context).greyLight_whiteDark),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
