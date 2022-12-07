import 'package:tv_app/movies/data/models/genres_model.dart';
import 'package:tv_app/movies/domain/entites/movie_detail.dart';

class MovieDetailsModel extends MovieDetail {
  const MovieDetailsModel({
    required super.id,
    required super.genres,
    required super.title,
    required super.backdropPath,
    required super.overview,
    required super.releaseDate,
    required super.runtime,
    required super.voteAverage,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailsModel(
      id: json["id"],
      genres: List<GenresModel>.from(
        (json["genres"] as List).map(
          (e) => GenresModel.fromJson(e),
        ),
      ),
      title: json["title"],
      backdropPath: json["backdrop_path"],
      overview: json["overview"],
      releaseDate: json["release_date"],
      runtime: json["runtime"],
      voteAverage: json["vote_average"].toDouble(),
    );
  }
}
