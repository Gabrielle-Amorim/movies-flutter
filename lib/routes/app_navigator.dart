import 'package:get/get.dart';
import 'package:movies_flutter/routes/routes.dart';

abstract class AppNavigator {
  static final to = _AppNavigatorTo();
}

class _AppNavigatorTo<T> {
  Future<T?>? home() => Get.toNamed(AppRoutes.home);
}
