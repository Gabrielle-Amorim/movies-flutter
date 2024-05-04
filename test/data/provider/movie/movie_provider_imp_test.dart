import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_flutter/config.dart';
import 'package:movies_flutter/data/provider/movie/movie_provider_imp.dart';
import 'package:movies_flutter/data/rest-client/model/model.dart';

import '../../../mocks/mock_class.mocks.dart';
import '../../../mocks/mock_movies_api.dart';

void main() {
  group('MovieProviderImp', () {
    group('popularMovies', () {
      test('return popular movies', () async {
        final client = MockRestClient();

        when(
          client.get<Map<String, dynamic>>(
            route: '/3/movie/popular',
            queryParameters: {
              'api_key': AppConfig.apiKey,
              'language': AppConfig.language,
              'page': 1
            },
          ),
        ).thenAnswer(
          (_) => Future.value(
            RestClientResponse(
              data: MockMoviesApi.popularMoviesMock,
              statusCode: 200,
              statusMessage: 'success',
            ),
          ),
        );

        final provider = MovieProviderImp(client: client);

        await provider.popularMovies(page: 1);

        verify(
          client.get<Map<String, dynamic>>(
            route: '/3/movie/popular',
            queryParameters: {
              'api_key': AppConfig.apiKey,
              'language': AppConfig.language,
              'page': 1
            },
          ),
        ).called(1);
      });
    });

    group('getDetails', () {
      test('return movie details', () async {
        const id = '823464';
        final client = MockRestClient();

        when(
          client.get<Map<String, dynamic>>(
            route: '/3/movie/$id',
            queryParameters: {
              'api_key': AppConfig.apiKey,
              'language': AppConfig.language,
            },
          ),
        ).thenAnswer(
          (_) => Future.value(
            RestClientResponse(
              data: MockMoviesApi.movieById,
              statusCode: 200,
              statusMessage: 'success',
            ),
          ),
        );

        final provider = MovieProviderImp(client: client);

        await provider.getDetails(id: id);

        verify(
          client.get<Map<String, dynamic>>(
            route: '/3/movie/$id',
            queryParameters: {
              'api_key': AppConfig.apiKey,
              'language': AppConfig.language,
            },
          ),
        ).called(1);
      });
    });
    group('getGenre', () {
      test('return genres', () async {
        final client = MockRestClient();

        when(
          client.get<Map<String, dynamic>>(
            route: '/3/genre/movie/list',
            queryParameters: {
              'api_key': AppConfig.apiKey,
              'language': AppConfig.language,
            },
          ),
        ).thenAnswer(
          (_) => Future.value(
            RestClientResponse(
              data: MockMoviesApi.genres,
              statusCode: 200,
              statusMessage: 'success',
            ),
          ),
        );

        final provider = MovieProviderImp(client: client);

        await provider.getGenre();

        verify(
          client.get<Map<String, dynamic>>(
            route: '/3/genre/movie/list',
            queryParameters: {
              'api_key': AppConfig.apiKey,
              'language': AppConfig.language,
            },
          ),
        ).called(1);
      });
    });
  });
}
