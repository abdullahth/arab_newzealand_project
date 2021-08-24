enum FontFamilies {
  anton,
  cairo,
}

extension ext on FontFamilies {
  String get fontFamily {
    switch (this) {
      case FontFamilies.cairo:
        return 'Cairo';
      case FontFamilies.anton:
        return 'Anton';
    }
  }
}
