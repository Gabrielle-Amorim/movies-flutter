import 'package:get/get.dart';
import 'package:movies_flutter/routes/routes.dart';

abstract class AppNavigator {
  static final to = _AppNavigatorTo();

  static void back() => Get.back();
}

class _AppNavigatorTo<T> {
  Future<T?>? home() => Get.toNamed(AppRoutes.home);

  Future<T?>? details({required String id}) => Get.toNamed(
        AppRoutes.details,
        arguments: {'id': id},
      );
}
