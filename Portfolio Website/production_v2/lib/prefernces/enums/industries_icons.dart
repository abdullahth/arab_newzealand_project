import 'package:flutter/cupertino.dart';
import 'package:production_v2/prefernces/enums/assets.dart';

enum IndustriesIcons {
  health,
  education,
  sport,
  agriculture,
  business,
  technology,
  youthDevelopment,
  tourism,
  landscape,
  women,
}

extension ext on IndustriesIcons {
  AssetImage get provider {
    switch (this) {
      case IndustriesIcons.health:
        return Assets.healthIcon.provider;

      case IndustriesIcons.agriculture:
        return Assets.agricultureIcon.provider;

      case IndustriesIcons.education:
        return Assets.educationIcon.provider;

      case IndustriesIcons.youthDevelopment:
        return Assets.youthDevelopmentIcon.provider;

      case IndustriesIcons.tourism:
        return Assets.tourismIcon.provider;

      case IndustriesIcons.landscape:
        return Assets.landscapeIcon.provider;

      case IndustriesIcons.technology:
        return Assets.technologyIcon.provider;

      case IndustriesIcons.business:
        return Assets.businessIcon.provider;

      case IndustriesIcons.sport:
        return Assets.sportIcon.provider;

      case IndustriesIcons.women:
        return Assets.womenIcon.provider;
    }
  }
}
