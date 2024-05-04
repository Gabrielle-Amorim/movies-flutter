import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_flutter/controller/details/details_variables.dart';
import 'package:movies_flutter/domain/model/model.dart';

import '../../mocks/mock_class.mocks.dart';

void main() {
  group('DetailsController', () {
    group('setMovieId', () {
      test('set movieId value', () async {
        const id = 'id';
        final moviesService = MockMovieService();

        final controller = DetailsController(movieService: moviesService);

        controller.movieId = id;

        expect(controller.movieId, id);
      });
    });
    group('getDetails', () {
      test('calls moviesService.getDetails', () async {
        const id = 'id';
        final emptyMovie = MovieDetailsModel.empty();
        final moviesService = MockMovieService();

        when(moviesService.getDetails(id: id))
            .thenAnswer((_) => Future.value(emptyMovie));

        final controller = DetailsController(movieService: moviesService);

        await controller.getDetails(id: id);

        verify(moviesService.getDetails(id: id)).called(1);
        expect(controller.movie, emptyMovie);
      });
    });
  });
}
