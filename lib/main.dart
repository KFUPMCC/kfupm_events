import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfupm_events/src/routing/routes.dart';
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

  runApp(const ProviderScope(child: MyApp()));
}

bool isDark = true;
bool isloggedIn = true;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'KFUPM Events',
      debugShowCheckedModeBanner: false,
    );
  }
}
