import 'dart:async';

import 'lifecycle_component.dart';

class ValueStreamWrapper<T> implements DisposeLifecycleComponent {
  final StreamController<T> _controller = StreamController.broadcast();
  T? _value;

  Stream<T> get stream => _controller.stream;

  T get value => _value!;

  T? get valueOrNull => _value;

  ValueStreamWrapper();

  void add(T value) {
    _value = value;
    _controller.add(value);
  }

  @override
  void dispose() {
    _controller.close();
  }
}
