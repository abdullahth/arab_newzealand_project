import 'package:flutter/material.dart';

/// All assets files' pathes will be stored in this enumuration

enum Assets {
  africaVector,
  newzealandVector,
  logo,
  logoWhite,
  logoTypo,
  logoWhiteTypo,
  natureBackground,
  aucklandCity,
  rugby,
  farm,
  mountains
}

extension path on Assets {
  AssetImage get provider {
    switch (this) {
      case Assets.africaVector:
        return AssetImage("assets/africa-vector.png");

      case Assets.newzealandVector:
        return AssetImage("assets/newzealand-vector.png");

      case Assets.logo:
        return AssetImage("assets/logo-placeholder.png");

      case Assets.logoWhite:
        return AssetImage("assets/logo-placeholder-white.png");

      case Assets.logoTypo:
        return AssetImage("assets/logo-placeholder.png");

      case Assets.logoWhiteTypo:
        return AssetImage("assets/logo-placeholder-white.png");

      case Assets.aucklandCity:
        return AssetImage("assets/1.jpg");

      case Assets.natureBackground:
        return AssetImage("assets/5.jpg");

      case Assets.mountains:
        return AssetImage("assets/4.jpg");

      case Assets.farm:
        return AssetImage("assets/3.jpg");

      case Assets.rugby:
        return AssetImage("assets/rugby.jpg");
    }
  }
}
