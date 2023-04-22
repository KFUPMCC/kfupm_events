import 'package:go_router/go_router.dart';
import 'package:kfupm_events/src/features/login/login_page.dart';
import 'package:kfupm_events/src/features/main/presentation/main_page.dart';

import '../features/events/presentation/events_page.dart';
import '../features/register/presentation/register_page.dart';
import '../features/setting/presentation/setting_page.dart';

enum AppRoute {
  login,
  events,
  main,
  register,
  setting,
}

final goRouter = GoRouter(
  initialLocation: 'login',
  debugLogDiagnostics: false,
  routes: [
    GoRoute(
      path: 'login',
      name: AppRoute.login.name,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: 'events',
      name: AppRoute.events.name,
      builder: (context, state) => const EventsPage(),
    ),
    GoRoute(
      path: 'main',
      name: AppRoute.main.name,
      builder: (context, state) => const MainPage(),
    ),
    GoRoute(
      path: 'register',
      name: AppRoute.register.name,
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: 'setting',
      name: AppRoute.setting.name,
      builder: (context, state) => const SettingPage(),
    ),
  ],
);
