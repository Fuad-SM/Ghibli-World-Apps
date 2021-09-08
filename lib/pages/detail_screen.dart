import 'package:flutter/material.dart';
import 'package:ghibli_apps/models/film.dart';
import 'package:ghibli_apps/theme.dart';

class DetailScreen extends StatelessWidget {
  // const DetailScreen(this.film, {Key? key}) : super(key: key);
  // final Film film;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          Image.network(
            'https://m.media-amazon.com/images/M/MV5BYzJjMTYyMjQtZDI0My00ZjE2LTkyNGYtOTllNGQxNDMyZjE0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY1200_CR113,0,630,1200_AL_.jpg',
            width: MediaQuery.of(context).size.width,
            height: 400,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16))),
              )
            ],
          ),
        ],
      ),
    );
  }
}
