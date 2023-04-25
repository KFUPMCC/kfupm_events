import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/events/domain/etype.dart';

Widget TypeDrawer(EType type) {
  if (type == EType.exam) {
    return Row(
      children: const [
        Icon(
          Icons.quiz,
          color: Colors.white,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Exam',
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 13, color: Colors.white),
        )
      ],
    );
  } else if (type == EType.festival) {
    return Row(
      children: const [
        Icon(
          Icons.festival,
          color: Colors.white,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Festival',
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 13, color: Colors.white),
        )
      ],
    );
  } else if (type == EType.shortCourse) {
    return Row(
      children: const [
        Icon(
          Icons.book,
          color: Colors.white,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Short Course',
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 13, color: Colors.white),
        )
      ],
    );
  } else if (type == EType.sport) {
    return Row(
      children: const [
        Icon(
          Icons.sports_basketball,
          color: Colors.white,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Sport',
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 13, color: Colors.white),
        )
      ],
    );
  } else if (type == EType.workShop) {
    return Row(
      children: const [
        Icon(
          Icons.work,
          color: Colors.white,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Workshop',
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 13, color: Colors.white),
        )
      ],
    );
  } else {
    return Row(
      children: const [],
    );
  }
}
