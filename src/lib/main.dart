import 'package:flutter/material.dart';
import 'package:tv_app/core/services/services_locator.dart';
import 'package:tv_app/movies/presentation/screens/moviessss_screen.dart';

void main() {
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey.shade900,
      ),
      home: const MainMoviesScreen(),
    );
  }
}
