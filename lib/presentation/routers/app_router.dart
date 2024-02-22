import 'package:get/get.dart';

import '../modules/dashboard/index.dart';
import '../modules/splash/index.dart';

class AppRouter {
  AppRouter._();

  static const initScreen = RouterName.initScreen;

  static List<GetPage> routes() {
    return [
      GetPage(
        name: RouterName.initScreen,
        binding: SplashBinding(),
        page: () => const SplashScreen(),
      ),
      GetPage(
        name: RouterName.dashboardScreen,
        binding: DashboardBinding(),
        page: () => const DashboardScreen(),
      ),
    ];
  }
}

class RouterName {
  RouterName._();

  static const String initScreen = '/';
  static const String dashboardScreen = '/dashboard';
}
