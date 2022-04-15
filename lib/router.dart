import 'package:go_router/go_router.dart';
import 'package:riverpod_sample/pages/form_page/form_page.dart';
import 'package:riverpod_sample/pages/welcome_page/welcome_page.dart';

import 'const/routes.dart';
import 'pages/counter_page/counter_page.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: Routes.root,
      builder: (_, state) => const WelcomePage(),
    ),
    GoRoute(
      path: Routes.counter,
      builder: (_, state) => const CounterPage(),
    ),
    GoRoute(
      path: Routes.form,
      builder: (_, state) => const FormPage(),
    ),
  ],
);
