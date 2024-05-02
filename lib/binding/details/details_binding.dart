import 'package:get/get.dart';

import '../../controller/controller.dart';
import '../../data/data.dart';
import '../../data/rest-client/interface/rest_client.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(
      () => DetailsController(
        movieService: MovieServiceImp(
          movieProvider: MovieProviderImp(
            client: Get.find<RestClient>(),
          ),
        ),
      ),
    );
  }
}
