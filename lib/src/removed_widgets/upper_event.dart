import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kfupm_events/src/features/events/domain/etype.dart';
import 'package:kfupm_events/src/features/home/application/type_drawer.dart';

class UpperEvent extends StatelessWidget {
  const UpperEvent({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenHeight * 0.3,
      decoration: const BoxDecoration(
        // borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        image: DecorationImage(
          image: AssetImage('assets/card.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const FaIcon(
                  FontAwesomeIcons.arrowCircleLeft,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              TypeDrawer(EType.workShop),
              // save
              IconButton(
                onPressed: () {
                  //later
                },
                icon: const FaIcon(
                  FontAwesomeIcons.bookmark,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
