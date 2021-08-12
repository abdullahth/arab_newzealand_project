import 'package:flutter/material.dart';
import 'package:get/get.dart';

TextDirection getSuitableTextDirection() =>
    Get.locale == Locale('ar') ? TextDirection.rtl : TextDirection.ltr;
