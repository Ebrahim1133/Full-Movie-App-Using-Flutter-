import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_string.dart';
import 'package:movie_app/movies/presentation/screens/movies_screen.dart';

import 'core/services/services_locator.dart';

void main() {
  ServicesLocater().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppString.appString,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey.shade900,
      ),
      home: MoviesScreen(),
    );
  }
}
