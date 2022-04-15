import 'package:flutter/material.dart';
import 'package:riverpod_sample/const/routes.dart';
import 'package:riverpod_sample/extensions/localizations_helper.dart';

import 'content_card.dart';

class WelcomePageBody extends StatelessWidget {
  const WelcomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GridView.count(
        crossAxisCount: 3,
        padding: const EdgeInsets.all(8),
        children: const [
          _CounterCard(),
          _FormCard(),
        ],
      );
}

class _CounterCard extends StatelessWidget {
  const _CounterCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ContentCard(
        routePath: Routes.counter,
        title: context.localizations.counter,
        description: context.localizations.counterDescription,
      );
}

class _FormCard extends StatelessWidget {
  const _FormCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ContentCard(
        routePath: Routes.form,
        title: context.localizations.form,
        description: context.localizations.formDescription,
      );
}
