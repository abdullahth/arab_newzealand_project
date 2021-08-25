import 'package:flutter/widgets.dart';

enum AppIcons { facebook, instagram, twitter, linkedin }

extension ext on AppIcons {
  AssetImage get provider {
    switch (this) {
      case AppIcons.facebook:
        return AssetImage('icons/facebook.png');
      case AppIcons.instagram:
        return AssetImage('icons/instagram.png');
      case AppIcons.twitter:
        return AssetImage('icons/twitter.png');
      case AppIcons.linkedin:
        return AssetImage('icons/linkedin.png');
    }
  }
}
