import 'package:flutter/material.dart';

enum Assets {
  logo,
  logoWhite,
  logoBlack,
  logoBlackReversed,
  logoTypo,
  logoWhiteTypo,
  logoBlackTypo,
  bgOne,
  bgTwo,
  bgThree,
  bgFour,
  bgFive,
  analysis,
  contact,

// Categories
  rugby,
  farm,
  mountains,
  health,
  education,
  youth,
  technology,
  business,
  tourism,
  women,

  // Categories Icons
  healthIcon,
  agricultureIcon,
  educationIcon,
  youthDevelopmentIcon,
  tourismIcon,
  landscapeIcon,
  technologyIcon,
  businessIcon,
  sportIcon,
  womenIcon,

  experts,
  teamWork,
  humanPower
}

extension ext on Assets {
  AssetImage get provider {
    switch (this) {
      case Assets.logo:
        return AssetImage('assets/logo.png');

      case Assets.logoWhite:
        return AssetImage('assets/logo-white.png');

      case Assets.logoBlack:
        return AssetImage('assets/logo-black.png');

      case Assets.logoBlackReversed:
        return AssetImage('assets/logo-black-reversed.png');

      case Assets.logoTypo:
        return AssetImage('assets/logo-typo.png');

      case Assets.logoWhiteTypo:
        return AssetImage('assets/logo-white-typo.png');

      case Assets.logoBlackTypo:
        return AssetImage('assets/logo-black-typo.png');

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

      case Assets.analysis:
        return AssetImage('assets/analysis.jpg');

      case Assets.contact:
        return AssetImage('assets/contact.jpg');

      // Categories
      case Assets.mountains:
        return AssetImage("assets/4.jpg");

      case Assets.farm:
        return AssetImage("assets/3.jpg");

      case Assets.rugby:
        return AssetImage("assets/rugby.jpg");

      case Assets.health:
        return AssetImage("assets/health.jpg");

      case Assets.education:
        return AssetImage("assets/education.jpg");

      case Assets.youth:
        return AssetImage("assets/youth.jpg");

      case Assets.technology:
        return AssetImage("assets/technology.jpg");

      case Assets.business:
        return AssetImage("assets/currency.jpg");

      case Assets.tourism:
        return AssetImage("assets/tourism.jpg");

      case Assets.women:
        return AssetImage("assets/women.jpg");

      case Assets.healthIcon:
        return AssetImage("assets/health_icon.png");

      case Assets.agricultureIcon:
        return AssetImage("assets/agriculture_icon.png");

      case Assets.educationIcon:
        return AssetImage("assets/education_icon.png");

      case Assets.youthDevelopmentIcon:
        return AssetImage("assets/youthDevelopment_icon.png");

      case Assets.tourismIcon:
        return AssetImage("assets/tourism_icon.png");

      case Assets.landscapeIcon:
        return AssetImage("assets/landscape_icon.png");

      case Assets.technologyIcon:
        return AssetImage("assets/technology_icon.png");

      case Assets.businessIcon:
        return AssetImage("assets/business_icon.png");

      case Assets.sportIcon:
        return AssetImage("assets/sport_icon.png");

      case Assets.womenIcon:
        return AssetImage("assets/women_icon.png");

      case Assets.experts:
        return AssetImage("assets/experts.jpg");

      case Assets.teamWork:
        return AssetImage("assets/team_work.jpg");

      case Assets.humanPower:
        return AssetImage("assets/human_power.jpg");
    }
  }
}
