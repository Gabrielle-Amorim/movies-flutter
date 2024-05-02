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

  @override
  Future<MovieDetailsModel> getDetails({required String id}) => movieProvider.getDetails(id: id);

  @override
  Future<List<MovieModel>> filterByGenre({required List<int> ids}) => movieProvider.filterByGenre(ids: ids);
}
