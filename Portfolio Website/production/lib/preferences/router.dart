import 'package:fluro/fluro.dart';
import 'package:production/screens/home_page/home_page.dart';
import 'package:production/screens/journey_page/journey_page.dart';

class AppRouter {
  static FluroRouter router = FluroRouter();
  
  static void setupRouter() {
    router.define(
      '/',
      handler: Handler(handlerFunc: (_, __) => HomePage()),
    );
    router.define(
      '/journey',
      handler: Handler(handlerFunc: (_, __) => JourneyPage()),
    );
  }
}
