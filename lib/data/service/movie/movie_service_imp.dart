import '../../../domain/model/model.dart';
import '../../data.dart';

class MovieServiceImp extends MovieService {
  MovieServiceImp({
    required this.movieProvider,
  });
  final MovieProvider movieProvider;

  @override
  Future<List<GenreModel>> getGenre() => movieProvider.getGenre();

  @override
  Future<List<MovieModel>> popularMovies() => movieProvider.popularMovies();
}
