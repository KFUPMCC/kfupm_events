// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/events/application/type_converter.dart';

import 'package:kfupm_events/src/features/events/domain/etype.dart';
import 'package:kfupm_events/src/features/home/application/type_drawer.dart';

class EventType extends StatelessWidget {
  const EventType({
    Key? key,
    required this.type,
  }) : super(key: key);
  final String type;

  @override
  Widget build(BuildContext context) {
    EType convertedType = fromStringToEType(type);
    return Positioned(bottom: 72, left: 5, child: TypeDrawer(convertedType));
  }
}
