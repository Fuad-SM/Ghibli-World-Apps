import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ghibli_apps/models/film.dart';
import 'package:http/http.dart' as http;

class FilmProvider extends ChangeNotifier {
  getFilm() async {
    var result =
        await http.get(Uri.parse('https://ghibliapi.herokuapp.com/films'));
    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Film> spaces = data.map((item) => Film.fromJson(item)).toList();
      return spaces;
    } else {
      return <Film>[];
    }
  }
}
