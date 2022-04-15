import 'package:go_router/go_router.dart';
import 'package:riverpod_sample/pages/welcome_page/welcome_page.dart';

import 'const/routes.dart';
import 'pages/counter_page.dart';

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
  ],
);
