import 'package:flutter/material.dart';
import 'package:kfupm_events/src/constants/constants.dart';
import 'package:kfupm_events/src/features/home/presentation/week_tab.dart';

class HomeLower extends StatefulWidget {
  const HomeLower({super.key});

  @override
  State<HomeLower> createState() => _HomeLowerState();
}

class _HomeLowerState extends State<HomeLower>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 18 weeks clickable tabs
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              indicatorColor: Colors.white,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kGreenColor,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              labelPadding: const EdgeInsets.symmetric(horizontal: 16),
              tabs: const [
                WeekTab(number: 1),
                WeekTab(number: 2),
                WeekTab(number: 3),
                WeekTab(number: 4),
                WeekTab(number: 5),
                WeekTab(number: 6),
                WeekTab(number: 7),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // Events view per tab
        SizedBox(
          width: double.infinity,
          height: 470,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              height: 1000,
              child: TabBarView(
                controller: tabController,
                children: const [
                  WeekTab(
                    number: 1,
                  ),
                  WeekTab(
                    number: 2,
                  ),
                  WeekTab(
                    number: 3,
                  ),
                  WeekTab(
                    number: 4,
                  ),
                  WeekTab(
                    number: 5,
                  ),
                  WeekTab(
                    number: 6,
                  ),
                  WeekTab(
                    number: 7,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
