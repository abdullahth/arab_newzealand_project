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
      case CategoriesRoutes.sports:
      case CategoriesRoutes.education:
      case CategoriesRoutes.youthDevelopment:
      case CategoriesRoutes.health:
      case CategoriesRoutes.technology:
      case CategoriesRoutes.business:
      case CategoriesRoutes.tourism:
      case CategoriesRoutes.landscape:
      default:
        return null;
    }
  }
}
