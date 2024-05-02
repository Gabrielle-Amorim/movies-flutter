import '../../../domain/model/model.dart';

abstract class MovieProvider {
  Future<List<GenreModel>> getGenre();

  Future<List<MovieModel>> popularMovies();

  Future<MovieDetailsModel> getDetails({required String id});

  Future<List<MovieModel>> filterByGenre({required List<int> ids});
}
