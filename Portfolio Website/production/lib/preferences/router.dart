import 'package:fluro/fluro.dart';
import 'package:production/screens/about_page/about_page.dart';
import 'package:production/screens/services_page/services_page.dart';
import 'package:production/screens/contact_page/contact_page.dart';
import 'package:production/screens/activity_page/activity_page.dart';
import 'package:production/screens/companies_page/companies_page.dart';
import 'package:production/screens/partners_page/partners_page.dart';
import 'package:production/screens/investment_page/investment_page.dart';
import 'package:production/screens/home_page/home_page.dart';
import 'package:production/screens/journey_page/journey_page.dart';

class AppRouter {
  static FluroRouter router = FluroRouter();

  static void setupRouter() {
    router.define(
      '/',
      handler: Handler(handlerFunc: (_, __) => JourneyPage()),
    );
    router.define(
      '/journey',
      handler: Handler(handlerFunc: (_, __) => HomePage()),
    );

    // Home Page App Bar Pages
    router.define(
      '/about',
      handler: Handler(handlerFunc: (_, __) => AboutPage()),
    );
    router.define(
      '/activity',
      handler: Handler(handlerFunc: (_, __) => ActivityPage()),
    );
    router.define(
      '/investments',
      handler: Handler(handlerFunc: (_, __) => InvestmentPage()),
    );
    router.define(
      '/partners',
      handler: Handler(handlerFunc: (_, __) => PartnersPage()),
    );
    router.define(
      '/services',
      handler: Handler(handlerFunc: (_, __) => Servicespage()),
    );
    router.define(
      '/contact',
      handler: Handler(handlerFunc: (_, __) => ContactPage()),
    );
    router.define(
      '/companies',
      handler: Handler(handlerFunc: (_, __) => CompaniesPage()),
    );
  }
}
