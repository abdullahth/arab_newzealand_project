import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';

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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(),
    );
  }
}
