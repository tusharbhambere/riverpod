import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends StateNotifier<Counter> {
  CounterNotifier([Counter? counter]) : super(counter ?? Counter(0));

  void increment() {
    state = Counter(state.couter + 1);
  }
}

class Counter {
  final int couter;

  Counter(this.couter);
}
