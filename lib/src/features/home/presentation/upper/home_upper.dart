import 'package:flutter/material.dart';
import 'package:kfupm_events/src/constants/constants.dart';
import 'package:kfupm_events/src/features/home/presentation/upper/filtering_buttons.dart';
import 'package:kfupm_events/src/features/home/presentation/upper/home_logo.dart';
import 'package:kfupm_events/src/features/home/presentation/upper/home_welcoming_text.dart';
import 'package:kfupm_events/src/features/home/presentation/upper/search_field.dart';

class HomeUpper extends StatefulWidget {
  const HomeUpper({super.key});

  @override
  State<HomeUpper> createState() => _HomeUpperState();
}

class _HomeUpperState extends State<HomeUpper> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: screenHeight * 0.25,
          decoration: const BoxDecoration(
              color: kGreenColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                children: const [
                  HomeWelcomingText(),
                  HomeLogo(),
                ],
              ),
              const SearchField(),
            ],
          ),
        ),
        const Positioned(
          child: Padding(
            padding: EdgeInsets.only(top: 180.0),
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: FilteringButtons(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
