import 'package:flutter/material.dart';
import 'package:kfupm_events/src/constants/constants.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class MajorSelect extends StatefulWidget {
  const MajorSelect({super.key});

  @override
  State<MajorSelect> createState() => _MajorSelectState();
}

class _MajorSelectState extends State<MajorSelect> {
  List<String> allMajorsList = kfupm_majors;

  String? selectedMajor = kfupm_majors[0];

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: Text(
            'Current Major',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Provider.of<DarkNotifier>(context).blackLight_whiteDark,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
              color: Provider.of<DarkNotifier>(context).greyLight_blackDark,
              borderRadius: BorderRadius.circular(5)),
          child: DropdownButton<String>(
            dropdownColor: Provider.of<DarkNotifier>(context).backgroundColor,
            value: selectedMajor,
            items: allMajorsList
                .map(
                  (item) => DropdownMenuItem<String>(
                    value: item,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Text(
                        item,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Provider.of<DarkNotifier>(context)
                                .blackLight_whiteDark),
                      ),
                    ),
                  ),
                )
                .toList(),
            onChanged: (newValue) {
              setState(
                () {
                  selectedMajor = newValue;
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
