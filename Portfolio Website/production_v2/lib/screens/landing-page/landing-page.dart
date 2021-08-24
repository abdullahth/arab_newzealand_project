import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'components/desktop_body/desktop_body.dart';
import 'components/tablet_body/tablet_body.dart';
import 'components/mobile_body/mobile_body.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdvancedMultiDevice(
      mobile: LandingPageMobileBody(),
      computer: LandingPageDesktopBody(),
      tablet: LandingPageTabletBody(),
    );
  }
}
