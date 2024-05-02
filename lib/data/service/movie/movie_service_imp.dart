import '../../../domain/model/model.dart';
import '../../data.dart';
import '../interface/interface.dart';

class MovieServiceImp extends MovieService {
  MovieServiceImp({
    required this.movieProvider,
  });
  final MovieProvider movieProvider;

  @override
  Future<List<GenreModel>> getGenre() => movieProvider.getGenre();
}
