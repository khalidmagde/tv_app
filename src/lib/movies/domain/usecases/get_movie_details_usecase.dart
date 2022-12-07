import 'package:equatable/equatable.dart';
import 'package:tv_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tv_app/core/usecase/base_usecase.dart';
import 'package:tv_app/movies/domain/entites/movie_detail.dart';
import 'package:tv_app/movies/domain/repository/base_movies_repository.dart';

class GetMovieDetailsUseCase
    extends BaseUseCase<MovieDetail, MovieDetailsParameters> {
  final BaseMoviesRepositry baseMoviesRepositry;

  GetMovieDetailsUseCase(this.baseMoviesRepositry);

  @override
  Future<Either<Failure, MovieDetail>> excute(
      MovieDetailsParameters parameters) async {
    return await baseMoviesRepositry.getMovieDetails(parameters);
  }
}

class MovieDetailsParameters extends Equatable {
  final int movieId;

  const MovieDetailsParameters({required this.movieId});

  @override
  List<Object?> get props => [movieId];
}
