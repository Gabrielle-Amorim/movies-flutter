import 'package:movies_flutter/model/model.dart';

class RestClientException implements Exception {
  RestClientException({
    this.message,
    this.statusCode,
    this.error,
    this.response,
  });

  final String? message;
  final int? statusCode;
  final dynamic error;
  final RestClientResponse<dynamic>? response;
}
