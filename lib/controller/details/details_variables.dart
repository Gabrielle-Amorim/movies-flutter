import 'package:get/get.dart';

import '../../domain/model/model.dart';
import '../../data/data.dart';

part 'details_controller.dart';

class DetailsVariables extends GetxController {
  DetailsVariables({
    required this.movieService,
  });

  final MovieService movieService;

  final _loading = false.obs;

  final _movieId = ''.obs;
  final _movie = MovieDetailsModel.empty().obs;
}
