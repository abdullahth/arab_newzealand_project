import 'package:flutter/material.dart';

enum Assets {
  logo,
  logoWhite,
  logoBlack,
  bgOne,
  bgTwo,
  bgThree,
  bgFour,
  bgFive,
}

extension ext on Assets {
  ImageProvider get provider {
    switch (this) {
      case Assets.logo:
        return AssetImage('assets/logo.png');

      case Assets.logoWhite:
        return AssetImage('assets/logo-white.png');

      case Assets.logoBlack:
        return AssetImage('assets/logo-black.png');

      case Assets.bgOne:
        return AssetImage('assets/background_one.png');

      case Assets.bgTwo:
        return AssetImage('assets/background_two.png');

      case Assets.bgThree:
        return AssetImage('assets/background_three.png');

      case Assets.bgFour:
        return AssetImage('assets/background_four.png');
        
      case Assets.bgFive:
        return AssetImage('assets/background_five.png');
    }
  }
}
