import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:production_v2/prefernces/theme.dart';
import 'prefernces/localizations.dart';
import 'screens/landing-page/landing-page.dart';

void main() {
  initailizeDims(
    debuggingMobileDeviceHeight: 744,
    debuggingMobileDeviceWidth: 500,
    debuggingTabletDeviceHeight: 744,
    debuggingTabletDeviceWidth: 767.2,
    debuggingDesktopDeviceHeight: 753.6,
    debuggingDesktopDeviceWidth: 1536,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aotara Group',
      theme: themeData,
      translations: AppLocalizations(),
      fallbackLocale: Locale('en'),
      locale: Get.locale,
      supportedLocales: [
        Locale('ar'),
        Locale('en'),
        Locale('fr'),
      ],
      home: LandingPage(),
    );
  }
}
