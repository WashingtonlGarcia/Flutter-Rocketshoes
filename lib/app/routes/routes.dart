import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../ui/views/views.dart';

class Routes {
  static const String home = '/';
  static const String cart = '/cart';

  static const String initialRoute = home;

  static Route<GetPageRoute> onGenerateRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case cart:
        return GetPageRoute(
          routeName: cart,
          page: () => CartView(),
        );
      case home:
      default:
        return GetPageRoute(
          routeName: home,
          page: () => HomeView(),
        );
    }
  }
}
