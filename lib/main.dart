import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:movies_flutter/provider/provider.dart';

// import 'common/common.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org',
      contentType: 'application/json',
      connectTimeout: const Duration(milliseconds: 10000),
      receiveTimeout: const Duration(milliseconds: 15000),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () async {
              // final RestClient restClientImp = RestClientImp(dio: dio);
              // final MovieProvider movieProvider = MovieProviderImp(client: restClientImp);
              // final genres = await movieProvider.getGenre();
            },
            child: Container(
              color: Colors.red,
              width: 50,
              height: 50,
            ),
          ),
        ),
      ),
    );
  }
}
