import 'package:flutter/cupertino.dart';

class DimsConfig {
  final double _debugginDeviceWidth = 1536, _debugginDeviceHeight = 753.6;

  late double deviceWidth, deviceHeight;

  late double heightRatio, widthRatio;

  late bool isDesktop, isMobile, isTablet;

  // late Widget desktopChild, mobileChild, tabletChild;

  DimsConfig(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    deviceWidth = devSize.width;
    deviceHeight = devSize.height;

    heightRatio = deviceHeight / _debugginDeviceHeight;
    widthRatio = deviceWidth / _debugginDeviceWidth;

    isMobile = deviceWidth <= 600;
    isTablet = deviceWidth >= 600 && deviceWidth <= 1100;
    isDesktop = deviceWidth >= 1100;
  }

  height(double input) => input * heightRatio;

  width(double input) => input * widthRatio;
}
