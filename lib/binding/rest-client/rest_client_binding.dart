import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:movies_flutter/config.dart';

import '../../data/rest-client/interface/rest_client.dart';
import '../../data/rest-client/rest_client_imp.dart';

class ClientHttpBinding implements Bindings {
  @override
  void dependencies() {
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: AppConfig.apiUrl,
        contentType: 'application/json',
        connectTimeout: const Duration(milliseconds: 10000),
        receiveTimeout: const Duration(milliseconds: 15000),
      ),
    );
    final client = RestClientImp(dio: dio);
    Get.put<RestClient>(client, permanent: true);
  }
}
