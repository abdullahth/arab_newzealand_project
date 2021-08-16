enum CategoriesRoutes {
  anonymosCategoryName,
  sports,
  agriculture,
  education,
  youthDevelopment,
  health,
  business,
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
      case CategoriesRoutes.business:
      default:
        return null;
    }
  }
}
