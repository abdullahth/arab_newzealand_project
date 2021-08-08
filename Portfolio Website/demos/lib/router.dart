import 'package:demos/demo_ONE/widget.dart';
import 'package:demos/demo_three/widget.dart';
import 'package:fluro/fluro.dart';

import 'demo_two/widget.dart';

class AppRouter {
  static FluroRouter router = FluroRouter();
  static void setupRouter() {
    router.define(
      '/',
      handler: Handler(handlerFunc: (_, __) => DemoThree()),
    );
    router.define(
      '/DemoOne',
      handler: Handler(handlerFunc: (_, __) => DemoOne()),
    );
    router.define(
      '/DemoTwo',
      handler: Handler(handlerFunc: (_, __) => DemoTwo()),
    );
  }
}
