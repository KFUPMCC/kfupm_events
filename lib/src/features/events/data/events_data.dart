import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kfupm_events/src/features/events/domain/etype.dart';
import 'package:kfupm_events/src/features/events/domain/event.dart';

class EventsDataNotifier extends ChangeNotifier {
  QueryDocumentSnapshot<Object?>? event;

  // void addEventToTempRepo(QueryDocumentSnapshot<Object?> event) {
  //   events.add(event);
  //   notifyListeners();
  // }

  eventSaver(QueryDocumentSnapshot<Object?> event) {
    this.event = event;
    notifyListeners();
  }
}



//   Event(
  //     creator: 'a@a.com',
  //     id: 1,
  //     title: 'The Power of LinkedIn',
  //     image: 'https://imgtr.ee/images/2023/05/07/a39Tn.png',
  //     agenda: '- Building the perfect Profile page\n'
  //         '- What to share and what to not? Best way to share it\n'
  //         '- Linking what you want with what companies search for\n'
  //         '- How to expand your connections?\n'
  //         '- How to benefit from your connections? How to respond to offers?\n',
  //     type: EType.workShop,
  //     host: 'Computer Club',
  //     hostLogo: 'https://imgtr.ee/images/2023/05/07/aPolF.png',
  //     building: 'Building 70',
  //     buildingURL: 'https://goo.gl/maps/BCNAGcnpVSEdXVZLA',
  //     seats: 450,
  //     time: const TimeOfDay(hour: 19, minute: 30),
  //     date: DateTime(2023, 2, 13),
  //   ),
  //   Event(
  //     creator: 'a@a.com',
  //     id: 2,
  //     title: 'Automating Using Python',
  //     image: 'https://imgtr.ee/images/2023/05/07/a3Yam.png',
  //     agenda: 'KFUPM students and several Professors, Graduates and Staff get\n'
  //         ' theopportunity to carry out their social responsibility through\n '
  //         ' participating invariety of field Programs that aim to help patients, elder\n'
  //         ' people, children,poor neighborhoods as well as participating in cleaning \n'
  //         ' some parts of HalfMoon beach, public utilities and others.Students will \n'
  //         ' be divided into 16 groups to execute 8 voluntary programschosen by \n'
  //         ' them.\n'
  //         'You are required to attend all 4 days and submit \n'
  //         'the final assignment in-order to be awarded a completion \n'
  //         'certificate You need to bring your own laptop.\n'
  //         ' Dinner will be served during all days of the short course\n'
  //         '• Day 1\n'
  //         '⁃ Review of Python\n'
  //         '⁃ The importance of Automation\n'
  //         ' ⁃ Introduction to PyAuroGUI Module\n'
  //         '⁃ Introduction to Pywinauto Module\n'
  //         '• Day 2\n'
  //         '⁃ Introduction to Selenium Module\n'
  //         '⁃ Introduction to Requests Module\n'
  //         '⁃ Introduction to Selenium Module\n'
  //         '⁃ Introduction to BeautifulSoup Module\n'
  //         '• Day 3\n'
  //         '⁃ Building Auto Course Register tool\n'
  //         '⁃ Using Robot Framework\n'
  //         '⁃ Using Pytest Framework\n'
  //         '• Day 4\n'
  //         '⁃ Continue building the Registration tool\n'
  //         '⁃ Presentations⁃ Final Assignment\n',
  //     type: EType.shortCourse,
  //     host: 'Computer club & Dr. Khalid Al- Jasser',
  //     hostLogo: 'https://imgtr.ee/images/2023/05/07/aPolF.png',
  //     building: 'Building 57 - Room 205',
  //     buildingURL: 'https://goo.gl/maps/VAv7o7a7Pc57TwCL7',
  //     seats: 60,
  //     time: const TimeOfDay(hour: 8, minute: 00),
  //     date: DateTime(2023, 1, 29),
  //   ),
  //   Event(
  //     creator: 'a@a.com',
  //     id: 3,
  //     title: 'Volunteer Day',
  //     image: 'https://imgtr.ee/images/2023/05/07/a36YR.png',
  //     agenda: 'KFUPM students and several Professors,\n'
  //         'Graduates and Staff get theopportunity to carry out their \n'
  //         'social responsibility through participating invariety of field\n'
  //         ' Programs that aim to help patients, elder people, children,poor neighborhoods\n'
  //         'as well as participating in cleaning some parts of \n'
  //         'HalfMoon beach, public utilities and others\n'
  //         '.Students will be divided into 16 groups to execute 8 \n'
  //         'voluntary programs chosen by them.\n'
  //         'Programs: \n'
  //         '-Childrens programs\n'
  //         '-Elderly programs\n'
  //         '-Programs for poor families\n'
  //         '-Hospital visits and role of people with special needs\n'
  //         '-Maintenance of public facilities and focus to the environment\n'
  //         '-Visit correctional centers\n'
  //         '-The "Thanks" program- Traffic safety program\n',
  //     type: EType.festival,
  //     host: 'Volunteer unit',
  //     hostLogo: 'https://i.ibb.co/KqHC0kG/volunteer-logo.png',
  //     building: 'Building 11 - Main Hall',
  //     buildingURL: 'https://goo.gl/maps/kQtsrvEn2nchM7wu9',
  //     seats: 1000,
  //     time: const TimeOfDay(hour: 8, minute: 00),
  //     date: DateTime(2023, 2, 9),
  //   ),
  // ];
