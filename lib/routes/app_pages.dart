import 'package:get/get.dart';

import '../binding/binding.dart';
import '../ui/screen/screen.dart';
import './app_routes.dart';

class AppPages {
  AppPages._();

  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: AppRoutes.welcome,
      page: () => const WelcomeScreen(),
      bindings: [
        ClientHttpBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.details,
      page: () => const DetailsScreen(),
      bindings: [
        DetailsBinding(),
      ],
    ),
  ];
}
