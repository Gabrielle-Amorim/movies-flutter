import '../model/model.dart';

abstract class RestClient {
  Future<RestClientResponse<T>> get<T>({
    required String route,
    Map<String, dynamic>? queryParameters,
  });
}
