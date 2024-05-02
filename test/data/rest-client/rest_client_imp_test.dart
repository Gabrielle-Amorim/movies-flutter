import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mocktail/mocktail.dart';
import 'package:movies_flutter/data/rest-client/interface/rest_client.dart';
import 'package:movies_flutter/data/rest-client/model/model.dart';
import 'package:movies_flutter/data/rest-client/rest_client_imp.dart';

class DioMock extends Mock implements Dio {}

void main() {
  late DioMock dio;
  late RestClient sut;
  late String path;
  late Map<String, dynamic> data;
  late Map<String, dynamic> queryParameters;
  late String errorMessage;
  late int statusCode;

  void initialDataMock() {
    path = '';
    data = {
      'id': 1,
    };
    queryParameters = {
      'example': 'true',
    };
    errorMessage = "Not found";
    statusCode = 404;
  }

  setUp(
    () {
      dio = DioMock();
      sut = RestClientImp(dio: dio);
      initialDataMock();
    },
  );
  test(
    'Should call get method with success',
    () async {
      Future<Response<dynamic>> httpCall() => dio.get(
            path,
            queryParameters: queryParameters,
          );

      when<Future<Response<dynamic>>>(httpCall).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 200,
          statusMessage: data.toString(),
          requestOptions: RequestOptions(),
        ),
      );
      final result = await sut.get(
        route: path,
        queryParameters: queryParameters,
      );
      verify(httpCall).called(1);
      expect(result.data, data);
      expect(result.statusCode, equals(200));
      expect(result.statusMessage, data.toString());
    },
  );

  test(
    'should call get method with any error',
    () async {
      when(
        () => dio.get<Map<String, dynamic>>(
          path,
          queryParameters: queryParameters,
        ),
      ).thenThrow(
        RestClientResponse<Map<String, dynamic>>(
          data: data,
          statusCode: statusCode,
          statusMessage: errorMessage,
        ),
      );
      final future = sut.get<Map<String, dynamic>>(
        route: path,
        queryParameters: queryParameters,
      );

      await expectLater(
        future,
        throwsA(
          isA<RestClientResponse<Map<String, dynamic>>>()
              .having(
                (error) => error.statusMessage,
                'statusMessage',
                errorMessage,
              )
              .having(
                (error) => error.statusCode,
                'statusCode',
                statusCode,
              ),
        ),
      );
    },
  );

  test(
    'should throw dioerror with correct values',
    () async {
      final dioError = DioException(error: 'Erro de exemplo', requestOptions: RequestOptions());
      when(
        () => dio.get(
          path,
          queryParameters: queryParameters,
        ),
      ).thenThrow(dioError);

      try {
        await sut.get(
          route: path,
          queryParameters: queryParameters,
        );
        fail('Uma exceção deveria ter sido lançada');
      } catch (e) {
        expect(e, isA<RestClientException>());
      }
    },
  );
}
