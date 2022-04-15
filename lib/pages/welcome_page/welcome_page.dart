import 'package:flutter/material.dart';
import 'package:riverpod_sample/extensions/localizations_helper.dart';

import 'welcome_page_body.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: const WelcomePageBody(),
        appBar: AppBar(
          title: Text(
            context.localizations.welcome,
          ),
        ),
      );
}
