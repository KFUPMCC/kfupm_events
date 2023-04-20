import 'package:flutter/material.dart';
import '../features/main/presentation/home.dart';
import '../features/login/login.dart';

final Map<String, WidgetBuilder> routes = {
  '/home': (context) => Home(),
  '/login': (context) => LoginScreen(),
};
