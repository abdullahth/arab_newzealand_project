enum CategoriesRoutes {
  anonymosCategoryName,
  sports,
  agriculture,
  education,
  youthDevelopment,
  health,
  technology,
  business,
  tourism,
  landscape
}

extension ext on CategoriesRoutes {
  Function(String categoryName)? get navigateByCategoryNameCallback {
    switch (this) {
      case CategoriesRoutes.anonymosCategoryName:
        return (categoryName) {
          print(categoryName);
        };

      default:
        return null;
    }
  }

  String? get routeUrl {
    switch (this) {
      case CategoriesRoutes.agriculture:
        return 'agriculture';
      case CategoriesRoutes.sports:
        return 'sports';
      case CategoriesRoutes.education:
        return 'education';
      case CategoriesRoutes.youthDevelopment:
        return 'youthDevelopment';
      case CategoriesRoutes.health:
        return 'health';
      case CategoriesRoutes.technology:
        return 'technology';
      case CategoriesRoutes.business:
        return 'business';
      case CategoriesRoutes.tourism:
        return 'tourism';
      case CategoriesRoutes.landscape:
        return 'landscape';
      default:
        return null;
    }
  }
}
