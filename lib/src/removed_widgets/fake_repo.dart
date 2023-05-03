// import 'package:kfupm_events/src/constants/test_events.dart';
// import 'package:kfupm_events/src/features/events/domain/event.dart';

// class FakeEventsRepository {
//   FakeEventsRepository._();
//   static FakeEventsRepository instance = FakeEventsRepository._();

//   final List<Event> _events = kTestEvents;

//   List<Event> getEventsList() {
//     return _events;
//   }

//   Event? getEvent(String id) {
//     return _events.firstWhere((event) => event.id == id);
//   }

//   Future<List<Event>> fetchEventsList() {
//     return Future.value(_events);
//   }

//   Stream<List<Event>> watchEventsList() {
//     return Stream.value(_events);
//   }

//   Stream<Event?> watchEvents(String id) {
//     return watchEventsList()
//         .map((event) => event.firstWhere((event) => event.id == id));
//   }
// }
