part of 'details_variables.dart';

class DetailsController extends DetailsVariables {
  DetailsController({
    required super.movieService,
  });

  String get movieId => _movieId.value;
  MovieDetailsModel get movie => _movie.value;
  bool get loading => _loading.value;

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
    try {
      _loading.value = true;
      final MovieDetailsModel response = await movieService.getDetails(id: movieId);
      _movie.value = response;
    } catch (_) {
      // TODO(Gabi): add error snack
    } finally {
      _loading.value = false;
    }
  }
}
