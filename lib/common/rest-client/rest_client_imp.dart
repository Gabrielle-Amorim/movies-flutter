import 'package:dio/dio.dart';

import '../../model/model.dart';

class RestClientImp {
  RestClientImp({
    required this.dio,
  });

  final Dio dio;

  Future<RestClientResponse<T>> get<T>({
    required String route,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response response = await dio.get<T>(
        route,
        queryParameters: queryParameters,
      );
      return RestClientResponse<T>(
        data: response.data,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
      );
    } on DioException catch (e) {
      throw RestClientException(
        message: e.message,
        statusCode: e.response?.statusCode,
        error: e.error,
        response: RestClientResponse(
          data: e.response?.data,
          statusCode: e.response?.statusCode,
          statusMessage: e.response?.statusMessage,
        ),
      );
    } catch (_) {
      rethrow;
    }
  }
}
