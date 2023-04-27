import 'package:go_router/go_router.dart';
import 'package:kfupm_events/src/common_widgets/landing_page.dart';
import 'package:kfupm_events/src/features/create/presentation/create_page.dart';
import 'package:kfupm_events/src/features/events/presentation/myevents/myevents_page.dart';
import 'package:kfupm_events/src/features/home/presentation/home_page.dart';
import 'package:kfupm_events/src/features/login/presentation/login_page.dart';
import 'package:kfupm_events/src/features/home/presentation/welcome_page.dart';
import '../features/events/presentation/event_page.dart';
import '../features/register/presentation/register_page.dart';
import '../features/setting/presentation/setting_page.dart';

enum AppRoute {
  welcome,
  login,
  event,
  home,
  landing,
  myevents,
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
        name: AppRoute.welcome.name,
        builder: (context, state) => const WelcomePage(),
        routes: [
          GoRoute(
            path: 'landing',
            name: AppRoute.landing.name,
            builder: (context, state) => const LandingPage(),
          ),
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
            path: 'myevents',
            name: AppRoute.myevents.name,
            builder: (context, state) => const MyEvents(),
          ),
          GoRoute(
            path: 'login',
            name: AppRoute.login.name,
            builder: (context, state) => const LoginPage(),
          ),
          GoRoute(
            path: 'register/:title/:date/:time/:location',
            name: AppRoute.register.name,
            builder: (context, state) {
              final title = state.params['title']!;
              final date = state.params['date']!;
              final time = state.params['time']!;
              final location = state.params['location']!;
              return RegisterPage(
                date: date,
                time: time,
                location: location,
                title: title,
              );
            },
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
