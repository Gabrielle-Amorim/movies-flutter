import '../../../domain/model/model.dart';

abstract class MovieProvider {
  Future<List<GenreModel>> getGenre();
}
