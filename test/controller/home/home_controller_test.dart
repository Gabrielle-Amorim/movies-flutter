import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_flutter/controller/controller.dart';

import '../../mocks/mock_class.mocks.dart';

void main() {
  group('HomeController', () {
    group('onInit', () {
      test('calls getGenre and  getPopularMovies', () async {
        final moviesService = MockMovieService();

        when(moviesService.getGenre()).thenAnswer((_) => Future.value([]));
        when(moviesService.popularMovies()).thenAnswer((_) => Future.value([]));

        final controller = HomeController(movieService: moviesService);

        controller.onInit();

        verify(moviesService.getGenre()).called(1);
        verify(moviesService.popularMovies()).called(1);
        expect(controller.userLogged, 'Visitante');
      });
    });
    group('init', () {
      test('calls getGenre and  getPopularMovies', () async {
        final moviesService = MockMovieService();

        when(moviesService.getGenre()).thenAnswer((_) => Future.value([]));
        when(moviesService.popularMovies()).thenAnswer((_) => Future.value([]));

        final controller = HomeController(movieService: moviesService);

        await controller.init();

        verify(moviesService.getGenre()).called(1);
        verify(moviesService.popularMovies()).called(1);
      });
    });
    group('getPopularMovies', () {
      test('calls moviesService.getPopularMovies', () async {
        final moviesService = MockMovieService();

        when(moviesService.popularMovies()).thenAnswer((_) => Future.value([]));

        final controller = HomeController(movieService: moviesService);

        await controller.getPopularMovies();

        verify(moviesService.popularMovies()).called(1);
        expect(controller.popularMovies, []);
        expect(controller.loading, false);
      });
    });
    group('getGenre', () {
      test('calls moviesService.getGenre', () async {
        final moviesService = MockMovieService();

        when(moviesService.getGenre()).thenAnswer((_) => Future.value([]));

        final controller = HomeController(movieService: moviesService);

        await controller.getGenre();

        verify(moviesService.getGenre()).called(1);
        expect(controller.genres, []);
        expect(controller.loading, false);
      });
    });

    group('filterByGenre', () {
      test('calls moviesService.getGenre', () async {
        final moviesService = MockMovieService();

        when(moviesService.getGenre()).thenAnswer((_) => Future.value([]));

        final controller = HomeController(movieService: moviesService);

        controller.filterByGenre(1);

        expect(controller.filteredGenre, 1);
      });
    });
  });
}
