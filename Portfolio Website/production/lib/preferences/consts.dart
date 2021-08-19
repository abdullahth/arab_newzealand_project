import 'package:flutter/material.dart';
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

final questionMark = Get.locale == Locale('en') ? '?' : '؟';
