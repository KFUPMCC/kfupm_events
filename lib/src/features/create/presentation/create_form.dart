import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kfupm_events/src/common_widgets/form_divider.dart';
import 'package:kfupm_events/src/common_widgets/input_field.dart';
import 'package:kfupm_events/src/features/create/data/event_date_notifier.dart';
import 'package:kfupm_events/src/features/create/data/event_time_notifier.dart';
import 'package:kfupm_events/src/features/create/data/event_type_notifier.dart';
import 'package:kfupm_events/src/features/create/presentation/agenda.dart';
import 'package:kfupm_events/src/features/create/presentation/set_event_date.dart';
import 'package:kfupm_events/src/features/create/presentation/event_select.dart';
import 'package:kfupm_events/src/features/create/presentation/section_name.dart';
import 'package:kfupm_events/src/features/create/presentation/set_event_time.dart';
import 'package:kfupm_events/src/common_widgets/navigate_button.dart';
import 'package:kfupm_events/src/routing/routes.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

import '../../events/data/events_data.dart';
import '../../events/domain/event.dart';
import '../../setting/application/show_pop.dart';

class CreateForm extends StatefulWidget {
  const CreateForm({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  State<CreateForm> createState() => _CreateFormState();
}

class _CreateFormState extends State<CreateForm> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();
  final TextEditingController _agendaController = TextEditingController();
  final TextEditingController _hostController = TextEditingController();
  final TimeOfDay time = TimeOfDay.now();
  final TextEditingController _hostLogoController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _locationLinkController = TextEditingController();
  final TextEditingController _seatsController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _imageController.dispose();
    _agendaController.dispose();
    _hostController.dispose();
    _hostLogoController.dispose();
    _locationController.dispose();
    _locationLinkController.dispose();
    _seatsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: widget.screenHeight * 0.8,
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
                // 1
                InputField(
                  type: TextInputType.name,
                  inputHint: 'Ex: The Power of LinkedIn',
                  inputName: 'Event Title',
                  controller: _titleController,
                ),
                const SizedBox(
                  height: 20,
                ),
                // 2
                InputField(
                  type: TextInputType.url,
                  inputHint: 'provide URL of header Image',
                  inputName: 'Event Image',
                  controller: _imageController,
                ),
                const SizedBox(
                  height: 30,
                ),
                //3
                Agenda(controller: _agendaController),
                const SizedBox(
                  height: 20,
                ),
                // 4
                const EventSelect(),
                const FormDivider(),
                // Host Information
                const SectionName(section: 'Host Information'),
                // 5
                InputField(
                  type: TextInputType.text,
                  inputHint: 'Ex: Computer Club',
                  inputName: 'Hosted by',
                  controller: _hostController,
                ),

                const SizedBox(
                  height: 20,
                ),
                // 6
                InputField(
                  type: TextInputType.text,
                  inputHint: 'provide URL of host logo',
                  inputName: 'Host logo',
                  controller: _hostLogoController,
                ),
                const FormDivider(),
                // Location
                const SectionName(section: 'Location Information'),

                // 7
                InputField(
                  type: TextInputType.text,
                  inputHint: 'Ex: Building 70 or Online',
                  inputName: 'Location Information',
                  controller: _locationController,
                ),
                const SizedBox(
                  height: 20,
                ),
                // 8
                InputField(
                  type: TextInputType.url,
                  inputHint: 'Link For Google Map Directions',
                  inputName: 'Location Link',
                  controller: _locationLinkController,
                ),
                const SizedBox(
                  height: 20,
                ),
                // 9
                InputField(
                  type: TextInputType.number,
                  inputHint: 'Ex: 450',
                  inputName: 'Available Seats',
                  controller: _seatsController,
                ),

                const FormDivider(),
                // Time Information
                const SectionName(section: 'Time Information'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // 10
                    SetEventDate(),
                    // 11
                    SetEventTime(),
                  ],
                ),
                const FormDivider(),

                // Create Section
                NavigateButton(
                  title: '      Create Event',
                  widthScale: 0.40,
                  navigatePage: () {
                    if (_titleController.text.isEmpty ||
                        _imageController.text.isEmpty ||
                        _agendaController.text.isEmpty ||
                        _hostController.text.isEmpty ||
                        _hostLogoController.text.isEmpty ||
                        _locationController.text.isEmpty ||
                        _locationLinkController.text.isEmpty ||
                        _seatsController.text.isEmpty) {
                      showPop(
                          14,
                          'Please fill all the fields',
                          'If their a field that not decided yet\nplease write (Not decided) ',
                          context);
                    } else {
                      Event event = Event(
                        seats: int.parse(_seatsController.text),
                        agenda: _agendaController.text,
                        building: _locationController.text,
                        //buildingURL: _locationLinkController.text,
                        buildingURL: 'https://www.google.com',
                        date: Provider.of<EventDateNotifier>(context,
                                listen: false)
                            .eventDate!,
                        host: _hostController.text,
                        //hostLogo: _hostLogoController.text,
                        hostLogo: 'assets/kfupm_logo.png',
                        id: 11,
                        //image: _imageController.text,
                        image: 'assets/card.png',
                        time: Provider.of<EventTimeNotifier>(context,
                                listen: false)
                            .eventTime!,
                        title: _titleController.text,
                        type: Provider.of<EventTypeNotifier>(context,
                                listen: false)
                            .eventType,
                      );
                      // reset event type
                      Provider.of<EventTypeNotifier>(context, listen: false)
                          .resetEventType();
                      // reset event date
                      Provider.of<EventDateNotifier>(context, listen: false)
                          .resetEventDate();
                      // reset event time
                      Provider.of<EventTimeNotifier>(context, listen: false)
                          .resetEventTime();
                      // add event
                      Provider.of<EventsDataNotifier>(context, listen: false)
                          .addEvent(event);
                      context.goNamed(AppRoute.createComplete.name);
                    }
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
