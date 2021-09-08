import 'package:flutter/material.dart';
import 'package:ghibli_apps/models/image_film.dart';

class FilmCard extends StatelessWidget {
  // final FilmImage film;

  // FilmCard(this.film);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 10,
      children: [
        for (var films in imageFilm)
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Column(
              children: [
                Image.network(
                  films.url,
                  height: 215,
                  width: 140,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
      ],
    );
  }
}

// Wrap(
//       spacing: 20,
//       runSpacing: 10,
//       children: [
//         for (var films in imageFilm)
//           ClipRRect(
//             borderRadius: BorderRadius.circular(18),
//             child: Image.network(
//               films.url,
//               height: 215,
//               width: 140,
//               fit: BoxFit.cover,
//             ),
//           ),
//       ],
//     );

// final Film films = imageFilm[index];
