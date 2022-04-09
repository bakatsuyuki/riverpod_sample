import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_sample/const/routes.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: _Body(),
      );
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: GridView.count(
          crossAxisCount: 3,
          padding: const EdgeInsets.all(16),
          children: const [
            _ContentCard(
              routePath: Routes.counter,
            )
          ],
        ),
      );
}

class _ContentCard extends StatelessWidget {
  const _ContentCard({
    Key? key,
    required this.routePath,
  }) : super(key: key);
  final String routePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(4),
        onTap: () => context.push(routePath),
        child: const SizedBox(),
      ),
    );
  }
}
