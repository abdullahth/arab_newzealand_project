import 'package:flutter/material.dart';

/// All assets files' pathes will be stored in this enumuration

enum Assets { africaVector, newzealandVector, logoPlaceholder }

extension path on Assets {
  AssetImage get provider {
    switch (this) {
      case Assets.africaVector:
        return AssetImage("africa-vector.png");

      case Assets.newzealandVector:
        return AssetImage("newzealand-vector.png");

      case Assets.logoPlaceholder:
        return AssetImage("logo-placeholder.png");
    }
  }
}
