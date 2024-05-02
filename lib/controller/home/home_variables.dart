import 'package:get/get.dart';

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
}
