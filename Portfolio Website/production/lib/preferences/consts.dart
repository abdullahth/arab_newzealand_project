import 'package:flutter/material.dart';
import 'package:production/preferences/enums/assets.dart';
import 'package:get/get.dart';

final lightTheme = ThemeData(
  scaffoldBackgroundColor: Color(0xFFF9F9F9),
  primaryColor: Color(0xFF30f05a),
  accentColor: Color(0xFF458bff),
);

final darkTheme = ThemeData(
  scaffoldBackgroundColor: Color(0xFF262626),
  primaryColor: Color(0xFF30f05a),
  accentColor: Color(0xFFffffff),
);

final List<Map> quotes = [
  {
    'quoter': "Evangline Lilly",
    'quote':
        "evangline_quote".tr,
    'asset': Assets.quoterEvanglineLilly.provider
  },
  {
    'quoter': "Luke Evans",
    'quote': "evans_quote".tr,
    'asset': Assets.quoterLukeEvans.provider
  }
];
