import 'package:dartz/dartz.dart';
import 'package:tv_app/movies/domain/entites/movie.dart';
import 'package:tv_app/movies/domain/entites/movie_detail.dart';
import 'package:tv_app/movies/domain/entites/recommendation.dart';
import 'package:tv_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:tv_app/movies/domain/usecases/get_recommendation_usecase.dart';

import '../../../core/error/failure.dart';

abstract class BaseMoviesRepositry {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
  Future<Either<Failure, MovieDetail>> getMovieDetails(
      MovieDetailsParameters parameters);
  Future<Either<Failure, List<Recommendation>>> getRecommendation(
      RecommendationParameters parameters);
}
