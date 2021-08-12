import 'package:flutter/material.dart';

/// All assets files' pathes will be stored in this enumuration

enum LocalIcons { facebook, twitter, instagram, linkedin }

extension path on LocalIcons {
  AssetImage get provider {
    switch (this) {
      case LocalIcons.facebook:
        return AssetImage('icons/facebook.png');

      case LocalIcons.twitter:
        return AssetImage('icons/twitter.png');

      case LocalIcons.instagram:
        return AssetImage('icons/instagram.png');

      case LocalIcons.linkedin:
        return AssetImage('icons/linkedin.png');
    }
  }
}
