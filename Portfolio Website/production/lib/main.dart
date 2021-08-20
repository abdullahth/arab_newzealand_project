import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:production/preferences/consts.dart';
import 'package:production/preferences/localization.dart';
import 'package:production/screens/journey_page/journey_page.dart';

import 'preferences/router.dart';

void main() {
  AppRouter.setupRouter();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arab New Zealand',
      theme: lightTheme,
      translations: Messages(),
      initialRoute: '/',
      onGenerateRoute: AppRouter.router.generator,
      home: JourneyPage(),
      // locale: Locale('ar'),
      locale: Locale('en'),
      fallbackLocale: Locale('en'),
      supportedLocales: [
        Locale('ar'),
        Locale('en'),
      ],
    );
  }
}
