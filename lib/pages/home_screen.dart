import 'package:flutter/material.dart';
import 'package:ghibli_apps/models/film.dart';
import 'package:ghibli_apps/models/image_film.dart';
import 'package:ghibli_apps/providers/film_provider.dart';
import 'package:ghibli_apps/theme.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var filmProvider = Provider.of<FilmProvider>(context);

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Image.asset(
              'assets/images/logo_ghibli.png',
              height: 90,
              width: 185,
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Text(
                'Studio Ghibli is one of the most acclaimed animation studios in the world, and the home of some of the most reverd and beloved animated works have ever graced the screen.',
                style: homeDescTextStyle.copyWith(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            FutureBuilder(
              future: filmProvider.getFilm(),
              builder: (context, snapshot) {
                int index = 0;
                FilmImage films = imageFilm[index];
                if (snapshot.hasData) {
                  List<Film> data = snapshot.data as List<Film>;
                  return Wrap(
                      spacing: 20,
                      runSpacing: 10,
                      children: data.map((item) {
                        index++;
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            height: 250,
                            width: 140,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.network(
                                    films.url,
                                    height: 215,
                                    width: 140,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(item.title)
                              ],
                            ),
                          ),
                        );
                      }).toList());
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            // Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 30),
            //     child: FilmCard())
          ],
        ),
      )),
    );
  }
}
