part of 'details_variables.dart';

class DetailsController extends DetailsVariables {
  DetailsController({
    required super.movieService,
  });

  String get movieId => _movieId.value;

  MovieDetailsModel get movie => _movie.value;

  set movieId(String value) => _movieId.value = value;

  Future<void> getDetails({id}) async {
    final MovieDetailsModel response = await movieService.getDetails(id: id);
    _movie.value = response;
  }
}
