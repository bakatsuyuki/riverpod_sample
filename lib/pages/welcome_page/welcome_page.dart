import 'package:flutter/material.dart';
import 'package:riverpod_sample/const/routes.dart';
import 'package:riverpod_sample/extensions/localizations_helper.dart';

import 'widgets/content_card.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: const _Body(),
        appBar: AppBar(
          title: Text(
            context.localizations.welcome,
          ),
        ),
      );
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GridView.count(
        crossAxisCount: 3,
        padding: const EdgeInsets.all(8),
        children: [
          ContentCard(
            routePath: Routes.counter,
            title: context.localizations.counter,
            description: context.localizations.counterDescription,
          ),

          ContentCard(
            routePath: Routes.form,
            title: context.localizations.form,
            description: context.localizations.formDescription,
          )
        ],
      );
}
