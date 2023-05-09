// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kfupm_events/src/features/register/application/add_registrant.dart';
import 'package:kfupm_events/src/features/register/domain/registrant.dart';
import 'package:kfupm_events/src/routing/routes.dart';
import 'package:provider/provider.dart';

import '../../events/data/events_data.dart';
import '../../setting/application/show_pop.dart';

void CreateRegistrant(
  BuildContext context,
  TextEditingController fullNameController,
  TextEditingController emailController,
  TextEditingController phoneNumberController,
  TextEditingController currentMajorController,
  TextEditingController experienceController,
  TextEditingController notesController,
) async {
  if (fullNameController.text.isEmpty ||
      emailController.text.isEmpty ||
      phoneNumberController.text.isEmpty ||
      currentMajorController.text.isEmpty ||
      experienceController.text.isEmpty) {
    showPop(
        14,
        'Please fill all the fields',
        'To ensure you have the best experience, \nwe require that all fields be completed.',
        context);
  } else {
    Registrant registrant = Registrant(
      fullName: fullNameController.text,
      email: emailController.text,
      phoneNumber: int.parse(phoneNumberController.text),
      currentMajor: currentMajorController.text,
      experience: experienceController.text,
      notes: notesController.text,
    );

    addRegistrantToEvent(
        context,
        registrant,
        Provider.of<EventsDataNotifier>(context, listen: false)
            .eventId
            .toString());

    Provider.of<EventsDataNotifier>(context, listen: false).resetAgreed();
    context.goNamed(AppRoute.registerComplete.name);
  }
}
