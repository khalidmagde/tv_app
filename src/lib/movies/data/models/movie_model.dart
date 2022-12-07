import 'package:tv_app/movies/domain/entites/movie.dart';

class MovieModel extends Movie {
  const MovieModel(
    super.id,
    super.title,
    super.backdropPath,
    super.genreIds,
    super.overview,
    super.voteAvarage,
    super.releaseDate,
  );

  factory MovieModel.fromjson(Map<String, dynamic> json) => MovieModel(
        json["id"],
        json["title"],
        json["backdrop_path"],
        List<int>.from(json["genre_ids"].map((e) => e)),
        json["overview"],
        json["vote_average"].toDouble(),
        json["release_date"],
      );
}
