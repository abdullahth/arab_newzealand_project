enum FontFamilies {
  anton,
  cairo,
  quicksand,
}

extension ext on FontFamilies {
  String get fontFamily {
    switch (this) {
      case FontFamilies.cairo:
        return 'Cairo';
      case FontFamilies.anton:
        return 'Anton';
      case FontFamilies.quicksand:
        return 'Quicksand';
    }
  }
}
