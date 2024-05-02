// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './routes/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Movies Flutter',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: AppRoutes.welcome,
    );
    // return const MaterialApp(
    // home: MainScreen(),
    // home: Scaffold(
    //   body: Center(
    //     child: GestureDetector(
    //       onTap: () async {
    //         // final RestClient restClientImp = RestClientImp(dio: dio);
    //         // final MovieProvider movieProvider = MovieProviderImp(client: restClientImp);
    //         // final genres = await movieProvider.getGenre();
    //       },
    //       child: Container(
    //         color: Colors.red,
    //         width: 50,
    //         height: 50,
    //       ),
    //     ),
    //   ),
    // ),
    // );
  }
}
