import 'package:flutter/material.dart';
import 'package:production/preferences/config_widgets_to_dims/config_widget_to_dims.dart';

import 'components/devices_bodies/mobile/mobile.dart';
import 'components/devices_bodies/tablet/tablet.dart';
import 'components/devices_bodies/desktop/desktop.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WidgetToDims(
      context,

      /// `Desktop Widget`
      desktop: DesktopHomePage(),

      /// `Tablet Widget`
      tablet: TabletHomePage(),

      /// `Mobile Widget`
      mobile: MobileHomePage(),
    );
  }
}
