import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:production/preferences/consts.dart';
import 'package:production/preferences/localization.dart';

import 'preferences/router.dart';
import 'screens/home_page/home_page.dart';

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
      home: HomePage(),
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
