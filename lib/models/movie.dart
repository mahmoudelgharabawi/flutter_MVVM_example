class Movie {
  String title;
  String poster;

  Movie({this.title, this.poster});

  Movie.fromJson(Map<String, dynamic> json) {
    this.title = json["Title"];
    this.poster = json["Poster"];
  }
}
