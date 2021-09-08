import 'package:flutter/material.dart';
import 'package:ghibli_apps/models/film.dart';
import 'package:ghibli_apps/pages/detail_screen.dart';
import 'package:ghibli_apps/pages/home_screen.dart';
import 'package:ghibli_apps/providers/film_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FilmProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Ghibli World',
          home: HomeScreen(),
        ));
  }
}
