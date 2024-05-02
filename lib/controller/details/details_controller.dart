part of 'details_variables.dart';

class DetailsController extends DetailsVariables {
  DetailsController({
    required super.movieService,
  });

  String get movieId => _movieId.value;

  MovieDetailsModel get movie => _movie.value;

  @override
  void onInit() {
    _getArgs();
    super.onInit();
  }

  void _getArgs() {
    final Map args = Get.arguments;
    _movieId.value = args['id'] ?? '';
    _getDetails();
  }

  Future<void> _getDetails() async {
    final MovieDetailsModel response = await movieService.getDetails(id: movieId);
    _movie.value = response;
  }
}
