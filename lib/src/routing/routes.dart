import 'package:go_router/go_router.dart';
import 'package:kfupm_events/src/common_widgets/landing_page.dart';
import 'package:kfupm_events/src/features/create/presentation/create_page.dart';
import 'package:kfupm_events/src/features/home/presentation/home_page.dart';
import 'package:kfupm_events/src/features/login/presentation/login_page.dart';
import '../features/events/presentation/event_page.dart';
import '../features/register/presentation/register_page.dart';
import '../features/setting/presentation/setting_page.dart';

enum AppRoute {
  login,
  event,
  home,
  landing,
  register,
  create,
  setting,
}

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: false,
  routes: [
    GoRoute(
        path: '/',
        name: AppRoute.landing.name,
        builder: (context, state) => const LandingPage(),
        routes: [
          GoRoute(
            path: 'event',
            name: AppRoute.event.name,
            builder: (context, state) => const EventPage(),
          ),
          GoRoute(
            path: 'create',
            name: AppRoute.create.name,
            builder: (context, state) => const CreatePage(),
          ),
          GoRoute(
            path: 'login',
            name: AppRoute.login.name,
            builder: (context, state) => const LoginPage(),
          ),
          GoRoute(
            path: 'register',
            name: AppRoute.register.name,
            builder: (context, state) => const RegisterPage(),
          ),
          GoRoute(
            path: 'home',
            name: AppRoute.home.name,
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: 'setting',
            name: AppRoute.setting.name,
            builder: (context, state) => const SettingPage(),
          ),
        ]),
  ],
);
