import 'package:flutter/material.dart';
import 'package:vamax/mobile/landing_page_mobile.dart';
import 'package:vamax/mobile/product_categories.dart';
import 'package:vamax/web/landing_page_web.dart';
import 'package:vamax/web/web_category.dart';

class Routes {
  static Route<dynamic> routeMaker(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return const LandingPageWeb();
            } else {
              return const LandingPageMobile();
            }
          }),
        );
      case '/category':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return const WebCategory();
            } else {
              return const MobileCategory();
            }
          }),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return const LandingPageWeb();
            } else {
              return const LandingPageMobile();
            }
          }),
        );
    }
  }
}
