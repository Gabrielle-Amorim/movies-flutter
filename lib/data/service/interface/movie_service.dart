import '../../../domain/model/model.dart';

abstract class MovieService {
  Future<List<GenreModel>> getGenre();
}
