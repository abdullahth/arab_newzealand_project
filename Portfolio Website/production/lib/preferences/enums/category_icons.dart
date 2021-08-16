import 'package:flutter/cupertino.dart';

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
}

extension ext on CategoryIcons {
  AssetImage get provider {
    switch (this) {
      case CategoryIcons.health:
        return AssetImage('');

      case CategoryIcons.agriculture:
        return AssetImage('');

      case CategoryIcons.education:
        return AssetImage('');

      case CategoryIcons.youthDevelopment:
        return AssetImage('');

      case CategoryIcons.tourism:
        return AssetImage('');

      case CategoryIcons.landscape:
        return AssetImage('');

      case CategoryIcons.technology:
        return AssetImage('');

      case CategoryIcons.business:
        return AssetImage('');

      case CategoryIcons.sport:
        return AssetImage('');
    }
  }
}
