import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/extensions/localizations_helper.dart';

import 'counter.dart';

class CounterPageBody extends ConsumerWidget {
  const CounterPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref)  => Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          context.localizations.pushedTimesAre,
        ),
        Text(
          '${ref.watch(counter)}',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    ),
  );
}

