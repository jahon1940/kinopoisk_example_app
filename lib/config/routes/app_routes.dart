import 'package:flutter/material.dart';

import '../../features/home/presentation/pages/home_page/home_page.dart';
import '../../features/main/presentation/pages/main_page/main_page.dart';
import 'name_routes.dart';

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.mainPage:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case RouteName.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
