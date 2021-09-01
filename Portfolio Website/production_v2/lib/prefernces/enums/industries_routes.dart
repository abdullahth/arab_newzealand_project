enum IndustriesRoutes {
  anonymosCategoryName,
  sports,
  agriculture,
  education,
  youthDevelopment,
  health,
  technology,
  business,
  tourism,
  landscape, 
  women,
}

extension ext on IndustriesRoutes {
  Function(String categoryName)? get navigateByCategoryNameCallback {
    switch (this) {
      case IndustriesRoutes.anonymosCategoryName:
        return (categoryName) {
          print(categoryName);
        };

      default:
        return null;
    }
  }

  String? get routeUrl {
    switch (this) {
      case IndustriesRoutes.agriculture:
        return 'agriculture';
      case IndustriesRoutes.sports:
        return 'sports';
      case IndustriesRoutes.education:
        return 'education';
      case IndustriesRoutes.youthDevelopment:
        return 'youthDevelopment';
      case IndustriesRoutes.health:
        return 'health';
      case IndustriesRoutes.technology:
        return 'technology';
      case IndustriesRoutes.business:
        return 'business';
      case IndustriesRoutes.tourism:
        return 'tourism';
      case IndustriesRoutes.landscape:
        return 'landscape';
      case IndustriesRoutes.women:
        return 'women';
      default:
        return null;
    }
  }
}
