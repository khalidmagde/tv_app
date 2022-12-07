import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String backdropPath;
  final List<int> genreIds;
  final String overview;
  final double voteAvarage;
  final String releaseDate;

  const Movie(
    this.id,
    this.title,
    this.backdropPath,
    this.genreIds,
    this.overview,
    this.voteAvarage,
    this.releaseDate,
  );

  @override
  List<Object?> get props => [
        id,
        title,
        backdropPath,
        genreIds,
        overview,
        voteAvarage,
        releaseDate,
      ];
}
