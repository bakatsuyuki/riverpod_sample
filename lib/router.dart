import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'const/routes.dart';
import 'pages/counter_page.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: Routes.root,
      builder: (BuildContext context, GoRouterState state) => const CounterPage(
        title: 'Flutter Demo Home Page',
      ),
    ),
  ],
);
