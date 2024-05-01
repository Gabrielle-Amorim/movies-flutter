import 'package:dio/dio.dart';

import './interface/rest_client.dart';
import './model/model.dart';

class RestClientImp implements RestClient {
  RestClientImp({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<RestClientResponse<T>> get<T>({
    required String route,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response<T> response = await dio.get<T>(
        route,
        queryParameters: queryParameters,
      );
      return _response<T>(response);
    } on DioException catch (e) {
      throw _exception(e);
    } catch (_) {
      rethrow;
    }
  }

  RestClientResponse<T> _response<T>(Response<T> response) => RestClientResponse<T>(
        data: response.data,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
      );

  RestClientException _exception(DioException error) => RestClientException(
        message: error.message,
        statusCode: error.response?.statusCode,
        error: error.error,
        response: RestClientResponse(
          data: error.response?.data,
          statusCode: error.response?.statusCode,
          statusMessage: error.response?.statusMessage,
        ),
      );
}
