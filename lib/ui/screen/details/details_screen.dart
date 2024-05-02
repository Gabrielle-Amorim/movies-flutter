import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/controller.dart';

class DetailsScreen extends GetView<DetailsController> {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () => Text(
            controller.movieId,
          ),
        ),
      ),
    );
  }
}
