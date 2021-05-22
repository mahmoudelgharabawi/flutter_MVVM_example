import 'dart:convert';

import 'package:flutter_mvvm_pattern/models/movie.dart';
import 'package:http/http.dart' as http;

class Webservice {
  Future<List<Movie>> fetchMovies(String keyword) async {
    final url = "https://www.omdbapi.com/?s=$keyword&apikey=e4cf9ecc";
    final response = await http.get(Uri.parse(url));

    try {
      final body = jsonDecode(response.body);
      final Iterable json = body["Search"];
      return json.map((movie) => Movie.fromJson(movie)).toList();
    } catch (e) {
      print(e);
      return null;
    }
  }
}
