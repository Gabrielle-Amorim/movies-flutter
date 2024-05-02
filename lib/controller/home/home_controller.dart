part of 'home_variables.dart';

class HomeController extends HomeVariables {
  HomeController({
    required super.movieService,
  });

  String get userLogged => _userLogged.value;
  bool get loading => _loading.value;

  List<GenreModel> get genres => _genres.toList();
  int get filteredGenre => _filteredGenre.value;

  @override
  void onInit() {
    _isUserLogged();
    _getGenre();
    super.onInit();
  }

  void _isUserLogged() {
    _userLogged.value = 'Visitante';
  }

  Future<void> _getGenre() async {
    try {
      _loading.value = true;
      final List<GenreModel> response = await movieService.getGenre();
      _genres.assignAll(response);
    } catch (_) {
    } finally {
      _loading.value = false;
    }
  }

  void filterByGenre(int id) {
    _filteredGenre.value = id;
  }
}
