import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../data/data.dart';
import '../../domain/model/model.dart';

part 'home_controller.dart';

class HomeVariables extends GetxController {
  HomeVariables({
    required this.movieService,
  });
  final MovieService movieService;

  final _userLogged = ''.obs;
  final _loading = false.obs;

  final _genres = <GenreModel>[].obs;
  final _filteredGenre = 0.obs;

  final _popularMovies = <MovieModel>[].obs;
  final _filteredMovies = <MovieModel>[].obs;

  PagingController<int, MovieModel> movieListController = PagingController(firstPageKey: 1);
}
