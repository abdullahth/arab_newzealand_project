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

    isMobile = deviceWidth <= 500;
    isTablet = deviceWidth >= 500 && deviceWidth <= 900;
    isDesktop = deviceWidth >= 900;
  }

  height(double input) => input * heightRatio;
  
  width(double input) => input * widthRatio;
}
