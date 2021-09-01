import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:production_v2/prefernces/enums/assets.dart';
import 'package:production_v2/prefernces/enums/industries_icons.dart';
import 'package:production_v2/prefernces/enums/industries_routes.dart';

class Category {
  String categoryName;
  AssetImage icon, backgroundAsset;
  IndustriesRoutes categoryRoute;

  Category({
    required this.categoryName,
    required this.icon,
    required this.backgroundAsset,
    required this.categoryRoute,
  });

// Constant Data
  static List<Category> categoriesData = [
    Category(
      categoryName: 'health'.tr,
      icon: IndustriesIcons.health.provider,
      backgroundAsset: Assets.health.provider,
      categoryRoute: IndustriesRoutes.health,
    ),
    Category(
      categoryName: 'sport'.tr,
      icon: IndustriesIcons.sport.provider,
      backgroundAsset: Assets.rugby.provider,
      categoryRoute: IndustriesRoutes.sports,
    ),
    Category(
      categoryName: 'education'.tr,
      icon: IndustriesIcons.education.provider,
      backgroundAsset: Assets.education.provider,
      categoryRoute: IndustriesRoutes.education,
    ),
    Category(
      categoryName: 'business'.tr,
      icon: IndustriesIcons.business.provider,
      backgroundAsset: Assets.business.provider,
      categoryRoute: IndustriesRoutes.business,
    ),
    Category(
      categoryName: 'technology'.tr,
      icon: IndustriesIcons.technology.provider,
      backgroundAsset: Assets.technology.provider,
      categoryRoute: IndustriesRoutes.technology,
    ),
    Category(
      categoryName: 'youth_development'.tr,
      icon: IndustriesIcons.youthDevelopment.provider,
      backgroundAsset: Assets.youth.provider,
      categoryRoute: IndustriesRoutes.youthDevelopment,
    ),
    Category(
      categoryName: 'tourism'.tr,
      icon: IndustriesIcons.tourism.provider,
      backgroundAsset: Assets.tourism.provider,
      categoryRoute: IndustriesRoutes.tourism,
    ),
    Category(
      categoryName: 'women'.tr,
      icon: IndustriesIcons.women.provider,
      backgroundAsset: Assets.women.provider,
      categoryRoute: IndustriesRoutes.women,
    ),
  ];
}
