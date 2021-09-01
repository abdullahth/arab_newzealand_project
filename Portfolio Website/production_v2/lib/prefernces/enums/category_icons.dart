import 'package:flutter/cupertino.dart';
import 'package:production_v2/prefernces/enums/assets.dart';

enum CategoryIcons {
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

extension ext on CategoryIcons {
  AssetImage get provider {
    switch (this) {
      case CategoryIcons.health:
        return Assets.healthIcon.provider;

      case CategoryIcons.agriculture:
        return Assets.agricultureIcon.provider;

      case CategoryIcons.education:
        return Assets.educationIcon.provider;

      case CategoryIcons.youthDevelopment:
        return Assets.youthDevelopmentIcon.provider;

      case CategoryIcons.tourism:
        return Assets.tourismIcon.provider;

      case CategoryIcons.landscape:
        return Assets.landscapeIcon.provider;

      case CategoryIcons.technology:
        return Assets.technologyIcon.provider;

      case CategoryIcons.business:
        return Assets.businessIcon.provider;

      case CategoryIcons.sport:
        return Assets.sportIcon.provider;

      case CategoryIcons.women:
        return Assets.womenIcon.provider;
    }
  }
}
