import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/counter_page.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const CounterPage(
        title: 'Flutter Demo Home Page',
      ),
    ),
  ],
);
