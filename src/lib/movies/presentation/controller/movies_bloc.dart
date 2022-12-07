import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_app/core/usecase/base_usecase.dart';
import 'package:tv_app/core/utills/enums.dart';
import 'package:tv_app/movies/domain/usecases/get_now_playing_usecase.dart';
import 'package:tv_app/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:tv_app/movies/domain/usecases/get_top_rated_usecase.dart';

import 'movies_event.dart';
import 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;
  MoviesBloc(
    this.getNowPlayingMoviesUseCase,
    this.getPopularMoviesUseCase,
    this.getTopRatedMoviesUseCase,
  ) : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);
    on<GetPopularMoviesEvent>(_getPopularMovies);
    on<GetTopRatedMoviesEvent>(_getTopRatedMovies);
  }

  FutureOr<void> _getPopularMovies(
      GetPopularMoviesEvent event, Emitter<MoviesState> emit) async {
    /// Check popular use case
    final result =
        await getNowPlayingMoviesUseCase.excute(const NoParameters());

    result.fold(
        (l) => emit(
              state.copyWith(
                popularState: RequestState.error,
                popularMessage: l.message,
              ),
            ),
        (r) => emit(
              state.copyWith(
                popularMovies: r,
                popularState: RequestState.loaded,
              ),
            ));
  }

  FutureOr<void> _getTopRatedMovies(
      GetTopRatedMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getTopRatedMoviesUseCase.excute(const NoParameters());
    result.fold(
        (l) => emit(state.copyWith(
              topRatedState: RequestState.error,
              topRatedMessage: l.message,
            )),
        (r) => emit(state.copyWith(
              topRatedMovies: r,
              topRatedState: RequestState.loaded,
            )));
  }

  FutureOr<void> _getNowPlayingMovies(
      GetNowPlayingMoviesEvent event, Emitter<MoviesState> emit) async {
    final result =
        await getNowPlayingMoviesUseCase.excute(const NoParameters());
    result.fold(
      (l) => emit(
        state.copyWith(
          nowPlayingState: RequestState.error,
          nowPlayingMessage: l.message,
        ),
      ),
      (r) => emit(
        state.copyWith(
          nowPlayingMovies: r,
          nowPlayingState: RequestState.loaded,
        ),
      ),
    );
  }
}
