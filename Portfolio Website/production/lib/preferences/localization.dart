import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          // Home Page
          'welcome': "أهلاً بك في...",
          'newzealand': "نيوزيلاندا",
          'short_bio':
              "حيث الطبيعة الخلابة، أحسن المزارع عالمياً، التعليم الغير قابل للنقد وأكثر من ذلك!.\nإنها جنة علي الأرض.",
          'start_journy': "رحلة سريعة",
          "more_info": "تعرف علي المجموعة",
          // AppBar
          'about': "عن المجلس",
          'activity': "الأنشطة",
          'investments': "الإستثمارات",
          'partners': "الشركاء",
          'services': "الخدمات",
          'contact': "تواصل معنا",
          'companies': "الشركات",
        },
        "en": {
          // Home Page
          'welcome': "Welcome to...",
          'newzealand': "New Zealand",
          'short_bio':
              "Where beautiful nature, the best farms in the world, uncritical education and even more!\nIt's a heaven on earth.",
          'start_journy': "Start journey!",
          "more_info": "More about Council!",
          // AppBar
          'about': "About",
          'activity': "Activity",
          'investments': "Investments",
          'partners': "Patners",
          'services': "Services",
          'contact': "Contact",
          'companies': "Companies",
        },
      };
}
