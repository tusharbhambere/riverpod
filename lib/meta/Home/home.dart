import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivderpodtutorial/core/notifier/couter_notifier.dart';
import 'package:velocity_x/velocity_x.dart';

final _couterProvider = StateNotifierProvider<CounterNotifier, Counter>((ref) {
  return CounterNotifier();
});

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log('rebuild');
    final counter = ref.watch(_couterProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(_couterProvider.notifier).increment();
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: 'CouterApp'.text.make(),
      ),
      body: Container(
        child: Center(
          child: Text('Couter:${counter.couter}'),
        ),
      ),
    );
  }
}
