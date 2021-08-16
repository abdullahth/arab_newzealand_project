import 'package:flutter/material.dart';
import 'package:production/preferences/config_widgets_to_dims/config_widget_to_dims.dart';

import 'componets/devices_body/desktop_body/desktop_body.dart';
import 'componets/devices_body/mobile_body/mobile_body.dart';
import 'componets/devices_body/tablet_body/tablet_body.dart';

class JourneyPage extends StatefulWidget {
  @override
  _JourneyPageState createState() => _JourneyPageState();
}

class _JourneyPageState extends State<JourneyPage> {
  @override
  Widget build(BuildContext context) {
    return WidgetToDims(
      context,
      tablet: TabletJourneyPage(),
      desktop: DesktopJourneyPage(),
      mobile: MobileJourneyPage(),
    );
  }
}
