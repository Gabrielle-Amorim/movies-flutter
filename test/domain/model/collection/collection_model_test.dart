import 'package:flutter_test/flutter_test.dart';
import 'package:movies_flutter/domain/model/model.dart';

void main() {
  group(
    'CollectionModel',
    () {
      test(
        'should create correctly from a Map',
        () {
          final Map<String, dynamic> map = {
            'id': 1234,
            'name': 'Harry Potter',
            'poster_path': 'poster_path',
            'backdrop_path': 'backdrop_path',
          };

          final model = CollectionModel.fromMap(map);

          expect(model.id, '1234');
          expect(model.name, 'Harry Potter');
          expect(model.posterPath, 'poster_path');
          expect(model.backdropPath, 'backdrop_path');
        },
      );

      test(
        'should initialize correctly with empty data',
        () {
          final CollectionModel model = CollectionModel.empty();
          expect(model.id, '');
          expect(model.name, '');
          expect(model.posterPath, '');
          expect(model.backdropPath, '');
        },
      );
    },
  );
}
