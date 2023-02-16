import 'package:flutter/material.dart';
import './views/home.dart';
import './views/login.dart';

final Map<String, WidgetBuilder> routes = {
  '/home': (context) => Home(),
  '/login': (context) => LoginScreen(),
};
