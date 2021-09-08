class Film {
  late String id;
  late String title;
  late String description;
  late String director;
  late String producer;
  late String releaseDate;
  late String runTime;
  late String rtScore;

  Film({
    required this.id,
    required this.title,
    required this.description,
    required this.director,
    required this.producer,
    required this.releaseDate,
    required this.runTime,
    required this.rtScore,
  });

  Film.fromJson(json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    director = json['director'];
    producer = json['producer'];
    releaseDate = json['release_date'];
    runTime = json['running_time'];
    rtScore = json['rt_score'];
  }
}
