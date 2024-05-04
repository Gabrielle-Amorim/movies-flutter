part of 'home_variables.dart';

class HomeController extends HomeVariables {
  HomeController({
    required super.movieService,
  });

  String get userLogged => _userLogged.value;
  bool get loading => _loading.value;

  List<GenreModel> get genres => _genres.toList();
  int get filteredGenre => _filteredGenre.value;

  List<MovieModel> get popularMovies => _popularMovies.toList();
  List<MovieModel> get filteredMovies => _filteredMovies.toList();

  @override
  void onInit() {
    _isUserLogged();
    init();
    _addListenerMovieList();
    super.onInit();
  }

  void _isUserLogged() {
    _userLogged.value = 'Visitante';
  }

  Future<void> init() async {
    try {
      _loading.value = true;
      await getGenre();
    } catch (_) {
    } finally {
      _loading.value = false;
    }
  }

  Future<void> getGenre() async {
    _loading.value = true;
    final List<GenreModel> response = await movieService.getGenre();
    _genres.assignAll(response);
  }

  Future<void> filterByGenre(int id) async {
    try {
      _loading.value = true;
      if (id == 0) {
        _filteredGenre.value = id;
        _filteredMovies.assignAll([]);
        return;
      }
      _filteredGenre.value = id;
      final List<MovieModel> response = await movieService.filterByGenre(
        ids: [
          id,
        ],
      );
      _filteredMovies.assignAll(response);
    } catch (_) {
    } finally {
      _loading.value = false;
    }
  }

  Future<void> _getPopularMovies({
    required int page,
  }) async {
    try {
      final response = await movieService.popularMovies(
        page: page,
      );
      final isLastPage = response.length < 20;
      if (isLastPage) {
        movieListController.appendLastPage(response);
      } else {
        movieListController.appendPage(response, page + 1);
      }
    } catch (error) {
      movieListController.error = error;
    }
  }

  Future<void> _addListenerMovieList() async {
    movieListController.addPageRequestListener(
      (page) {
        _getPopularMovies(
          page: page,
        );
      },
    );
  }
}
