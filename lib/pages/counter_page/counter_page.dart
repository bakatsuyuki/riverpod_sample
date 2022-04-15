import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/extensions/localizations_helper.dart';

import 'counter.dart';
import 'counter_page_body.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations.counter),
      ),
      body: const CounterPageBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.watch(counter.notifier).state += 1,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
