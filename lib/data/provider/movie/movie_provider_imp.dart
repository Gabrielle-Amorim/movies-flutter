import 'package:movies_flutter/config.dart';

import '../../rest-client/interface/rest_client.dart';
import '../../rest-client/model/model.dart';
import '../interface/interface.dart';
import '../../../domain/model/model.dart';

class MovieProviderImp extends MovieProvider {
  MovieProviderImp({
    required this.client,
  });
  final RestClient client;

  @override
  Future<List<GenreModel>> getGenre() async {
    try {
      final RestClientResponse response = await client.get<Map<String, dynamic>>(
        route: '/3/genre/movie/list',
        queryParameters: {
          'api_key': AppConfig.apiKey,
          'language': AppConfig.language,
        },
      );
      return ((response.data['genres'] ?? []) as List<dynamic>)
          .map(
            (map) => GenreModel.fromMap(map),
          )
          .toList();
    } catch (_) {
      rethrow;
    }
  }
}
