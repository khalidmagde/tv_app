import 'package:equatable/equatable.dart';
import 'package:tv_app/movies/domain/entites/genres.dart';

class MovieDetail extends Equatable {
  final int id;
  final List<Genres> genres;
  final String title;
  final String backdropPath;
  final int runtime;
  final double voteAverage;
  final String overview;
  final String releaseDate;

  const MovieDetail(
      {required this.id,
      required this.genres,
      required this.title,
      required this.backdropPath,
      required this.overview,
      required this.releaseDate,
      required this.runtime,
      required this.voteAverage});

  @override
  List<Object> get props => [
        id,
        genres,
        title,
        backdropPath,
        overview,
        releaseDate,
        voteAverage,
        runtime,
      ];
}
