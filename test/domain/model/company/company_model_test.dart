import 'package:flutter_test/flutter_test.dart';
import 'package:movies_flutter/domain/model/model.dart';

void main() {
  group(
    'CompanyModel',
    () {
      test(
        'should create correctly from a Map',
        () {
          final Map<String, dynamic> map = {
            'id': 1234,
            'logo_path': 'logo_path',
            'name': 'Warner Bros. Pictures',
            'origin_country': 'US',
          };

          final model = CompanyModel.fromMap(map);

          expect(model.id, '1234');
          expect(model.logoPath, 'logo_path');
          expect(model.name, 'Warner Bros. Pictures');
          expect(model.originCountry, 'US');
        },
      );

      test(
        'should initialize correctly with empty data',
        () {
          final CompanyModel model = CompanyModel.empty();
          expect(model.id, '');
          expect(model.logoPath, '');
          expect(model.name, '');
          expect(model.originCountry, '');
        },
      );
    },
  );
}
