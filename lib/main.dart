import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/common/rest-client/rest_client_imp.dart';

import 'model/model.dart';

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
              final RestClientImp restClientImp = RestClientImp(dio: dio);
              final RestClientResponse response = await restClientImp.get<Map<String, dynamic>>(
                route: '/3/genre/movie/list',
                queryParameters: {
                  'api_key': '62e48dcafbb216bec99239663b6eba93',
                },
              );
              print(response.data);
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
