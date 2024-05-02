import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movies_flutter/data/data.dart';
import 'package:movies_flutter/domain/model/model.dart';

class MovieProviderMock extends Mock implements MovieProvider {}

void main() {
  late MovieProviderMock movieProviderMock;
  late MovieService movieService;

  setUp(
    () {
      movieProviderMock = MovieProviderMock();
      movieService = MovieServiceImp(movieProvider: movieProviderMock);
    },
  );

  group(
    'MovieServiceImp',
    () {
      test(
        "should call correct provider method getGenre",
        () async {
          when(
            () => movieService.getGenre(),
          ).thenAnswer(
            (invocation) async => [
              GenreModel(
                id: 1,
                name: 'name01',
              ),
              GenreModel(
                id: 2,
                name: 'name02',
              )
            ],
          );
          await movieService.getGenre();
          verify(
            () => movieService.getGenre(),
          ).called(1);
        },
      );

      test(
        "should call correct provider method popularMovies",
        () async {
          when(
            () => movieService.popularMovies(),
          ).thenAnswer(
            (invocation) async => [
              MovieModel.empty(),
              MovieModel.empty(),
            ],
          );
          await movieService.popularMovies();
          verify(
            () => movieService.popularMovies(),
          ).called(1);
        },
      );

      test(
        "should call correct provider method getDetails",
        () async {
          when(
            () => movieService.getDetails(
              id: any(named: 'id'),
            ),
          ).thenAnswer(
            (invocation) async => MovieDetailsModel.empty(),
          );
          await movieService.getDetails(
            id: '1',
          );
          verify(
            () => movieService.getDetails(
              id: any(named: 'id'),
            ),
          ).called(1);
        },
      );
    },
  );
}
