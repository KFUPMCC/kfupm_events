import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kfupm_events/src/features/events/data/events_data.dart';
import 'package:kfupm_events/src/routing/routes.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //for directing the user to home page
  StreamSubscription<User?> user =
      FirebaseAuth.instance.authStateChanges().listen((user) {
    if (user == null) {
      //TODO:add (Stay Logged in functionality)
      //DO NOT CHANGE THIS IF STEATEMENT!!!
      isloggedIn = false;
    } else {
      isloggedIn = true;
    }
  });

  runApp(const MyApp());
}

//bool isDark = true;
bool isloggedIn = true;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      builder: (context, child) {
        return MaterialApp.router(
          theme: ThemeData(fontFamily: 'Open_Sans'),
          routerConfig: goRouter,
          title: 'KFUPM Events',
          debugShowCheckedModeBanner: false,
        );
      },
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) {
            return EventsDataNotifier();
          },
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) {
            return DarkNotifier();
          },
        ),
      ],
    );
  }
}
