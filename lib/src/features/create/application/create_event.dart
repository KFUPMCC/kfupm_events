import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kfupm_events/src/features/create/application/add_firestore.dart';
import 'package:kfupm_events/src/features/create/data/event_creator_notifier.dart';
import 'package:kfupm_events/src/features/create/data/event_date_notifier.dart';
import 'package:kfupm_events/src/features/events/data/events_data.dart';
import 'package:kfupm_events/src/features/events/domain/event.dart';
import 'package:kfupm_events/src/routing/routes.dart';
import 'package:provider/provider.dart';

import '../../setting/application/show_pop.dart';
import '../data/event_time_notifier.dart';
import '../data/event_type_notifier.dart';

void CreateEvent(
  BuildContext context,
  TextEditingController titleController,
  TextEditingController agendaController,
  TextEditingController imageController,
  TextEditingController hostController,
  TextEditingController hostLogoController,
  TextEditingController locationController,
  TextEditingController locationLinkController,
  TextEditingController seatsController,
) {
  if (titleController.text.isEmpty ||
      imageController.text.isEmpty ||
      agendaController.text.isEmpty ||
      hostController.text.isEmpty ||
      hostLogoController.text.isEmpty ||
      locationController.text.isEmpty ||
      locationLinkController.text.isEmpty ||
      seatsController.text.isEmpty) {
    showPop(
        14,
        'Please fill all the fields',
        'If their a field that not decided yet\nplease write (Not decided) ',
        context);
  } else {
    Event event = Event(
      seats: int.parse(seatsController.text),
      creator:
          Provider.of<EventCreatorNotifier>(context, listen: false).creator!,
      agenda: agendaController.text,
      building: locationController.text,
      buildingURL: locationLinkController.text,
      date: Provider.of<EventDateNotifier>(context, listen: false).eventDate!,
      host: hostController.text,
      hostLogo: hostLogoController.text,
      id: Provider.of<EventsDataNotifier>(context, listen: false)
              .events
              .length +
          1,
      image: imageController.text,
      time: Provider.of<EventTimeNotifier>(context, listen: false).eventTime!,
      title: titleController.text,
      type: Provider.of<EventTypeNotifier>(context, listen: false).eventType,
    );

    // reset event type
    Provider.of<EventTypeNotifier>(context, listen: false).resetEventType();
    // reset event date
    Provider.of<EventDateNotifier>(context, listen: false).resetEventDate();
    // reset event time
    Provider.of<EventTimeNotifier>(context, listen: false).resetEventTime();
    // reset creator mail
    Provider.of<EventCreatorNotifier>(context, listen: false)
        .resetEventCreator();
    // add event to temp store
    //Provider.of<EventsDataNotifier>(context, listen: false).addEvent(event);
    // add data to firebase
    addEventToFirestore(context, event);
    context.goNamed(AppRoute.createComplete.name);
  }
}
