import 'package:flutter/material.dart';

import 'dims_config.dart';

class ResponsiveWidget extends DimsConfig {
  Widget mobileWidget;
  Widget desktopWidget;
  Widget? tabletWidget;
  ResponsiveWidget(BuildContext context,
      {required this.mobileWidget,
      required this.desktopWidget,
      this.tabletWidget})
      : super(context);

  Widget build() {
    // If isTablet == true and the widget is null it will return desktopWidget
    if (isTablet) return this.tabletWidget ?? this.desktopWidget;

    if (isMobile) return this.mobileWidget;

    return this.desktopWidget;
  }
}
