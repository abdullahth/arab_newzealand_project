import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';

import 'components/desktop_body/desktop_body.dart';
import 'components/tablet_body/tablet_body.dart';
import 'components/mobile_body/mobile_body.dart';

class LandingPageAppBar extends StatefulWidget {
  Map<String, Function> tabsCallback;
  LandingPageAppBar({
    required this.tabsCallback,
  });
  @override
  _LandingPageAppBarState createState() => _LandingPageAppBarState();
}

class _LandingPageAppBarState extends State<LandingPageAppBar> {
  @override
  Widget build(BuildContext context) {
    return AdvancedMultiDevice(
      mobile: LandingPageMobileAppBar(),
      computer: LandingPageDesktopAppBar(
        tabsCallback: widget.tabsCallback,
      ),
      tablet: LandingPageTabletAppBar(
        tabsCallback: widget.tabsCallback,
      ),
    );
  }
}
