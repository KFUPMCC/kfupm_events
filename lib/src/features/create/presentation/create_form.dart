import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kfupm_events/src/common_widgets/form_divider.dart';
import 'package:kfupm_events/src/common_widgets/input_field.dart';
import 'package:kfupm_events/src/features/create/presentation/agenda.dart';
import 'package:kfupm_events/src/features/create/presentation/set_event_date.dart';
import 'package:kfupm_events/src/features/create/presentation/event_select.dart';
import 'package:kfupm_events/src/features/create/presentation/section_name.dart';
import 'package:kfupm_events/src/features/create/presentation/set_event_time.dart';
import 'package:kfupm_events/src/common_widgets/navigate_button.dart';
import 'package:kfupm_events/src/routing/routes.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class CreateForm extends StatelessWidget {
  const CreateForm({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenHeight * 0.8,
      margin: const EdgeInsets.only(top: 180),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Provider.of<DarkNotifier>(context).backgroundColor,
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // Event

                const SectionName(section: 'Event Information'),
                const InputField(
                  type: TextInputType.name,
                  inputHint: 'Ex: The Power of LinkedIn',
                  inputName: 'Event Title',
                  controller: null,
                ),
                const SizedBox(
                  height: 20,
                ),
                const InputField(
                  type: TextInputType.url,
                  inputHint: 'provide URL of header Image',
                  inputName: 'Event Image',
                  controller: null,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Agenda(),
                const SizedBox(
                  height: 20,
                ),
                const EventSelect(),
                const FormDivider(),
                // Host Information
                const SectionName(section: 'Host Information'),
                const InputField(
                  type: TextInputType.text,
                  inputHint: 'Ex: Computer Club',
                  inputName: 'Hosted by',
                  controller: null,
                ),

                const SizedBox(
                  height: 20,
                ),

                const InputField(
                  type: TextInputType.text,
                  inputHint: 'provide URL of host logo',
                  inputName: 'Host logo',
                  controller: null,
                ),
                const FormDivider(),
                // Location
                const SectionName(section: 'Location Information'),
                const InputField(
                  type: TextInputType.text,
                  inputHint: 'Ex: Building 70 or Online',
                  inputName: 'Location Information',
                  controller: null,
                ),
                const SizedBox(
                  height: 20,
                ),
                const InputField(
                  type: TextInputType.url,
                  inputHint: 'Link For Google Map Directions',
                  inputName: 'Location Link',
                  controller: null,
                ),
                const SizedBox(
                  height: 20,
                ),
                const InputField(
                  type: TextInputType.number,
                  inputHint: 'Ex: 450',
                  inputName: 'Available Seats',
                  controller: null,
                ),

                const FormDivider(),
                // Time Information
                const SectionName(section: 'Time Information'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SetEventDate(),
                    SetEventTime(),
                  ],
                ),
                const FormDivider(),

                // Create Section
                NavigateButton(
                  title: '  Create Event',
                  widthScale: 0.40,
                  navigatePage: () {
                    context.goNamed(AppRoute.createComplete.name);
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
