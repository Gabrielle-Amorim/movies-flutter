import 'package:get/get.dart';
import 'package:movies_flutter/data/data.dart';

import '../../controller/controller.dart';
import '../../data/rest-client/interface/rest_client.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        movieService: MovieServiceImp(
          movieProvider: MovieProviderImp(
            client: Get.find<RestClient>(),
          ),
        ),
      ),
    );
  }
}
