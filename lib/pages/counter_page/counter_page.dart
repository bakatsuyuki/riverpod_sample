import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/extensions/localizations_helper.dart';

import 'counter.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations.counter),
      ),
      body: const _Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.watch(counter.notifier).state += 1,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(context.localizations.pushedTimesAre),
            Text(
              '${ref.watch(counter)}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      );
}
