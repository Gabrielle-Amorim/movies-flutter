import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_flutter/routes/routes.dart';

import '../../../controller/controller.dart';
import '../../components/atoms/atoms.dart';
import '../../theme/colors.dart';
import '../../util/util.dart';

class DetailsScreen extends GetView<DetailsController> {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MFColors.darkPurple,
      appBar: AppBar(
        backgroundColor: MFColors.darkPurple,
        leading: IconButton(
          onPressed: AppNavigator.back,
          icon: Icon(
            Icons.arrow_back_ios,
            color: MFColors.white,
          ),
        ),
      ),
      body: Obx(
        () => Visibility(
          visible: !controller.loading,
          replacement: const MfLoading(),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Visibility(
                        visible: controller.movie.posterPath.isNotEmpty,
                        replacement: Container(),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                          ),
                          child: MfImageNetwork(
                            url: controller.movie.posterPath,
                            height: 250,
                            width: 150,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 200,
                            child: Text(
                              '${controller.movie.title} (${controller.movie.releaseDate.year})',
                              style: TextStyle(
                                color: MFColors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          controller.movie.companies.isNotEmpty
                              ? Text(
                                  controller.movie.companies.first.name,
                                  style: TextStyle(
                                    color: MFColors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              : Container(),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: 200,
                            child: Text(
                              controller.movie.getGenre(),
                              style: TextStyle(
                                color: MFColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Duração: ${TimeFormat.formatTime(controller.movie.runtime)}',
                            style: TextStyle(
                              color: MFColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Text(
                      controller.movie.overview,
                      style: TextStyle(
                        color: MFColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
