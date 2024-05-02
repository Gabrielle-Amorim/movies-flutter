import 'package:flutter_test/flutter_test.dart';
import 'package:movies_flutter/domain/model/model.dart';

void main() {
  group(
    'MovieDetailsModel',
    () {
      test(
        'should create correctly from a Map',
        () {
          final Map<String, dynamic> map = {
            'adult': false,
            'backdrop_path': 'backdrop_path',
            'belongs_to_collection': {
              'id': 1234,
              'name': 'name',
              'poster_path': 'poster_path',
              'backdrop_path': 'backdrop_path'
            },
            'budget': 130000,
            'genres': [
              {
                'id': 12,
                'name': 'Aventura',
              }
            ],
            'homepage': 'homepage',
            'id': 1234,
            'imdb_id': 'imdb_id',
            'origin_country': [
              'GB',
            ],
            'original_language': 'en',
            'original_title': 'original_title',
            'overview': 'overview',
            'popularity': 168.876,
            'poster_path': 'poster_path',
            'production_companies': [
              {
                'id': 1234,
                'logo_path': 'logo_path',
                'name': 'name',
                'origin_country': 'US',
              }
            ],
            'release_date': '2024-03-27',
            'runtime': 142,
            'status': 'status',
            'tagline': 'tagline',
            'title': 'title',
            'video': false,
            'vote_average': 8.017,
            'vote_count': 20863
          };

          final model = MovieDetailsModel.fromMap(map);
          expect(model.adult, false);
          expect(model.backdropPath, 'backdrop_path');
          expect(model.collection.id, '1234');
          expect(model.collection.name, 'name');
          expect(model.budget, 130000);
          expect(model.genres.length, 1);
          expect(model.genres[0].id, 12);
          expect(model.homepage, 'homepage');
          expect(model.id, '1234');
          expect(model.imdbId, 'imdb_id');
          expect(model.originCountry.length, 1);
          expect(model.originCountry[0], 'GB');
          expect(model.originalLanguage, 'en');
          expect(model.originalTitle, 'original_title');
          expect(model.overview, 'overview');
          expect(model.popularity, '168.876');
          expect(model.posterPath, 'poster_path');
          expect(model.companies.length, 1);
          expect(model.companies[0].name, 'name');
          expect(model.releaseDate.day, 27);
          expect(model.releaseDate.year, 2024);
          expect(model.runtime, 142);
          expect(model.status, 'status');
          expect(model.tagline, 'tagline');
          expect(model.title, 'title');
          expect(model.video, false);
          expect(model.voteAverage, '8.017');
          expect(model.voteCount, '20863');
        },
      );

      test(
        'should initialize correctly with empty data',
        () {
          final MovieDetailsModel model = MovieDetailsModel.empty();
          expect(model.adult, false);
          expect(model.backdropPath, '');
          expect(model.collection.id, '');
          expect(model.collection.name, '');
          expect(model.budget, 0);
          expect(model.genres.length, 0);
          expect(model.homepage, '');
          expect(model.id, '');
          expect(model.imdbId, '');
          expect(model.originCountry.length, 0);
          expect(model.originalLanguage, '');
          expect(model.originalTitle, '');
          expect(model.overview, '');
          expect(model.popularity, '');
          expect(model.posterPath, '');
          expect(model.companies.length, 0);
          expect(model.releaseDate.day, DateTime.now().day);
          expect(model.releaseDate.month, DateTime.now().month);
          expect(model.releaseDate.year, DateTime.now().year);
          expect(model.runtime, 0);
          expect(model.status, '');
          expect(model.tagline, '');
          expect(model.title, '');
          expect(model.video, false);
          expect(model.voteAverage, '');
          expect(model.voteCount, '');
        },
      );
    },
  );
}
