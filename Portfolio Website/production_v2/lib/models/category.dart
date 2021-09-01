import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:production_v2/prefernces/enums/assets.dart';
import 'package:production_v2/prefernces/enums/categories_routes.dart';
import 'package:production_v2/prefernces/enums/category_icons.dart';

class Category {
  String categoryName;
  AssetImage icon, backgroundAsset;
  CategoriesRoutes categoryRoute;

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
      icon: CategoryIcons.health.provider,
      backgroundAsset: Assets.health.provider,
      categoryRoute: CategoriesRoutes.health,
    ),
    Category(
      categoryName: 'sport'.tr,
      icon: CategoryIcons.sport.provider,
      backgroundAsset: Assets.rugby.provider,
      categoryRoute: CategoriesRoutes.sports,
    ),
    Category(
      categoryName: 'education'.tr,
      icon: CategoryIcons.education.provider,
      backgroundAsset: Assets.education.provider,
      categoryRoute: CategoriesRoutes.education,
    ),
    Category(
      categoryName: 'business'.tr,
      icon: CategoryIcons.business.provider,
      backgroundAsset: Assets.business.provider,
      categoryRoute: CategoriesRoutes.business,
    ),
    Category(
      categoryName: 'technology'.tr,
      icon: CategoryIcons.technology.provider,
      backgroundAsset: Assets.technology.provider,
      categoryRoute: CategoriesRoutes.technology,
    ),
    Category(
      categoryName: 'youth_development'.tr,
      icon: CategoryIcons.youthDevelopment.provider,
      backgroundAsset: Assets.youth.provider,
      categoryRoute: CategoriesRoutes.youthDevelopment,
    ),
    Category(
      categoryName: 'tourism'.tr,
      icon: CategoryIcons.tourism.provider,
      backgroundAsset: Assets.tourism.provider,
      categoryRoute: CategoriesRoutes.tourism,
    ),
    Category(
      categoryName: 'women'.tr,
      icon: CategoryIcons.women.provider,
      backgroundAsset: Assets.women.provider,
      categoryRoute: CategoriesRoutes.women,
    ),
  ];
}
