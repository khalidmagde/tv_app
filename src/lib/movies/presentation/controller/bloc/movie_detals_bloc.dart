import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_app/core/utills/enums.dart';
import 'package:tv_app/movies/data/datasource/movie_remote_datasource.dart';
import 'package:tv_app/movies/data/repository/movies_repository.dart';
import 'package:tv_app/movies/domain/entites/movie_detail.dart';
import 'package:tv_app/movies/domain/entites/recommendation.dart';
import 'package:tv_app/movies/domain/repository/base_movies_repository.dart';
import 'package:tv_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:tv_app/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:tv_app/movies/domain/usecases/get_recommendation_usecase.dart';
import 'package:tv_app/movies/domain/usecases/get_top_rated_usecase.dart';
part 'movie_detals_event.dart';
part 'movie_detals_state.dart';

class MovieDetalsBloc extends Bloc<MovieDetalsEvent, MovieDetalsState> {
  MovieDetalsBloc(this.getMovieDetailsUseCase, this.recommendationUseCse)
      : super(const MovieDetalsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
    on<GetMovieRecommendationEvent>(_getRecommendation);
  }

  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final RecommendationUseCse recommendationUseCse;

  FutureOr<void> _getMovieDetails(
      GetMovieDetailsEvent event, Emitter<MovieDetalsState> emit) async {
    final result = await getMovieDetailsUseCase
        .excute(MovieDetailsParameters(movieId: event.id));
    print(result);
    result.fold(
      (l) => emit(
        state.copyWith(
          movieDetailsState: RequestState.error,
          moveDetailsMessage: l.message,
        ),
      ),
      (r) => emit(
        state.copyWith(
          movieDetail: r,
          movieDetailsState: RequestState.loaded,
        ),
      ),
    );
  }

  FutureOr<void> _getRecommendation(
      GetMovieRecommendationEvent event, Emitter<MovieDetalsState> emit) async {
    final result =
        await recommendationUseCse.excute(RecommendationParameters(event.id));
    result.fold(
      (l) => emit(
        state.copyWith(
          recommendationState: RequestState.error,
          recommendationMessage: l.message,
        ),
      ),
      (r) => emit(
        state.copyWith(
          recommendation: r,
          recommendationState: RequestState.loaded,
        ),
      ),
    );
  }
}
