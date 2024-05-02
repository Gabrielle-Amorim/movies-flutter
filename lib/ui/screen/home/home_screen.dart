import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_flutter/routes/routes.dart';

import '../../../controller/controller.dart';
import '../../components/components.dart';
import '../../theme/colors.dart';
import '../../util/util.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MFColors.darkPurple,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Obx(
          () => Text(
            'Olá, ${controller.userLogged}!',
            style: TextStyle(
              color: MFColors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        backgroundColor: MFColors.darkPurple,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ).copyWith(
            top: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Filtre por gênero',
                style: TextStyle(
                  color: MFColors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 35,
                child: Obx(
                  () => ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (_, i) {
                      final genre = controller.genres[i];
                      return Obx(
                        () => Visibility(
                          visible: controller.filteredGenre == genre.id,
                          replacement: MfChip.unselected(
                            label: genre.name,
                            onTap: () => controller.filterByGenre(genre.id),
                          ),
                          child: MfChip.selected(
                            label: genre.name,
                            onTap: () => controller.filterByGenre(0),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (_, i) => const SizedBox(
                      width: 8,
                    ),
                    itemCount: controller.genres.length,
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'POPULARES',
                style: TextStyle(
                  color: MFColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Obx(
                () => SizedBox(
                  height: 300,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.popularMovies.length,
                    itemBuilder: (_, index) {
                      final movie = controller.popularMovies[index];
                      return MfImageCard(
                        onTap: () => AppNavigator.to.details(id: movie.id),
                        image: movie.posterPath,
                        text: movie.title,
                        secondaryText: MfDateFormat.dateToString(
                          movie.releaseDate,
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
