import 'package:flutter/material.dart';

/// All assets files' pathes will be stored in this enumuration

enum Assets {
  africaVector,
  newzealandVector,
  logo,
  logoWhite,
  logoTypo,
  logoWhiteTypo,
  natureBackgroundOne,
  natureBackgroundTwo,

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

  // Hotels
  cordisHotel,
  hiltonHotel,
  novotelHotel,
  sofitelHotel,

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

  // Cities
  aucklandCity,
  hamiltonCity,
  christchurchCity,
  welingtonCity,

  // Quoters
  quoterEvanglineLilly,
  quoterLukeEvans,
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

      case Assets.natureBackgroundOne:
        return AssetImage("assets/5.jpg");

      case Assets.natureBackgroundTwo:
        return AssetImage("assets/2.jpg");

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

      case Assets.healthIcon:
        return Assets.logoWhite.provider;
      // return AssetImage("assets/health_icon.jpg");

      case Assets.agricultureIcon:
        return Assets.logoWhite.provider;
      // return AssetImage("assets/agriculture_icon.jpg");

      case Assets.educationIcon:
        return Assets.logoWhite.provider;
      // return AssetImage("assets/education_icon.jpg");

      case Assets.youthDevelopmentIcon:
        return Assets.logoWhite.provider;
      // return AssetImage("assets/youthDevelopment_icon.jpg");

      case Assets.tourismIcon:
        return Assets.logoWhite.provider;
      // return AssetImage("assets/tourism_icon.jpg");

      case Assets.landscapeIcon:
        return Assets.logoWhite.provider;
      // return AssetImage("assets/landscape_icon.jpg");

      case Assets.technologyIcon:
        return Assets.logoWhite.provider;
      // return AssetImage("assets/technology_icon.jpg");

      case Assets.businessIcon:
        return Assets.logoWhite.provider;
      // return AssetImage("assets/business_icon.jpg");

      case Assets.sportIcon:
        return Assets.logoWhite.provider;
      // return AssetImage("assets/sport_icon.jpg");

      // Cities
      case Assets.aucklandCity:
        return AssetImage("assets/1.jpg");

      case Assets.hamiltonCity:
        return AssetImage("assets/hamilton.jpg");

      case Assets.christchurchCity:
        return AssetImage("assets/christchurch.jpg");

      case Assets.welingtonCity:
        return AssetImage("assets/welington.jpg");

      // Hotels
      case Assets.cordisHotel:
        return AssetImage("assets/cordis_hotel.jpg");

      case Assets.hiltonHotel:
        return AssetImage("assets/hilton_hotel.jpg");

      case Assets.novotelHotel:
        return AssetImage("assets/novotel_hotel.jpeg");

      case Assets.sofitelHotel:
        return AssetImage("assets/sofitel_hotel.jpg");

      // Quoters
      case Assets.quoterEvanglineLilly:
        return AssetImage("assets/quoter_evangline_lily.png");

      case Assets.quoterLukeEvans:
        return AssetImage("assets/quoter_luke_evans.png");
    }
  }
}
