abstract interface class LifecycleComponent
    implements DisposeLifecycleComponent, InitLifecycleComponent {}

abstract interface class AsyncLifecycleComponent
    implements DisposeLifecycleComponent, AsyncInitLifecycleComponent {}

abstract interface class DisposeLifecycleComponent {
  void dispose();
}

abstract interface class InitLifecycleComponent {
  void init();
}

abstract interface class AsyncInitLifecycleComponent {
  Future<void> asyncInit();
}
