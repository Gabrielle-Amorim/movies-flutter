import 'package:flutter_test/flutter_test.dart';
import 'package:movies_flutter/config.dart';
import 'package:movies_flutter/domain/model/model.dart';

void main() {
  group(
    'MovieModel',
    () {
      test(
        'should create correctly from a Map',
        () {
          final Map<String, dynamic> map = {
            'adult': false,
            'backdrop_path': 'backdrop_path',
            'genre_ids': [0, 1],
            'id': 1234,
            'original_language': 'original_language',
            'original_title': 'original_title',
            'overview': 'overview',
            'popularity': 2129.298,
            'poster_path': 'poster_path',
            'release_date': '2024-03-27',
            'title': 'title',
            'video': false,
            'vote_average': 6.549,
            'vote_count': 863
          };

          final model = MovieModel.fromMap(map);
          expect(model.adult, false);
          expect(model.backdropPath, 'backdrop_path');
          expect(model.genreIds.length, 2);
          expect(model.genreIds[0], 0);
          expect(model.id, '1234');
          expect(model.originalLanguage, 'original_language');
          expect(model.originalTitle, 'original_title');
          expect(model.overview, 'overview');
          expect(model.popularity, '2129.298');
          expect(model.posterPath, '${AppConfig.imagePath}poster_path');
          expect(model.releaseDate.day, 27);
          expect(model.releaseDate.year, 2024);
          expect(model.title, 'title');
          expect(model.voteAverage, '6.549');
          expect(model.voteCount, '863');
        },
      );

      test(
        'should initialize correctly with empty data',
        () {
          final MovieModel model = MovieModel.empty();
          expect(model.adult, false);
          expect(model.backdropPath, '');
          expect(model.genreIds, []);
          expect(model.id, '');
          expect(model.originalLanguage, '');
          expect(model.originalTitle, '');
          expect(model.overview, '');
          expect(model.popularity, '');
          expect(model.posterPath, '');
          expect(model.releaseDate.day, DateTime.now().day);
          expect(model.releaseDate.month, DateTime.now().month);
          expect(model.releaseDate.year, DateTime.now().year);
          expect(model.title, '');
          expect(model.video, false);
          expect(model.voteAverage, '');
          expect(model.voteCount, '');
        },
      );
    },
  );
}
