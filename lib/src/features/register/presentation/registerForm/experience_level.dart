import 'package:flutter/material.dart';
import 'package:kfupm_events/src/constants/constants.dart';

class ExperienceLevel extends StatefulWidget {
  const ExperienceLevel({super.key});

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
              const Text(
                'How familiar are you with this topic?',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
              ),
              Text(
                'I am "${_labels[_currentSliderValue.toInt()]}" with this Topic',
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
