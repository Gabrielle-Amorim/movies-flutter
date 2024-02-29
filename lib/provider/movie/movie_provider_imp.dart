import 'movie_provider.dart';
import '../../common/common.dart';
import '../../model/model.dart';

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
          'api_key': '62e48dcafbb216bec99239663b6eba93',
          'language': 'pt-BR',
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
