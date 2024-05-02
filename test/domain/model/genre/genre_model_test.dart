import 'package:flutter_test/flutter_test.dart';
import 'package:movies_flutter/domain/model/model.dart';

void main() {
  group(
    'GenreModel',
    () {
      test(
        'should create correctly from a Map',
        () {
          final Map<String, dynamic> map = {
            'id': 1234,
            'name': 'Fantasia',
          };

          final model = GenreModel.fromMap(map);

          expect(model.id, 1234);
          expect(model.name, 'Fantasia');
        },
      );

      test(
        'should initialize correctly with empty data',
        () {
          final GenreModel model = GenreModel.empty();
          expect(model.id, 0);
          expect(model.name, '');
        },
      );
    },
  );
}
