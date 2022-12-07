import 'package:get_it/get_it.dart';
import 'package:tv_app/movies/data/datasource/movie_remote_datasource.dart';
import 'package:tv_app/movies/data/repository/movies_repository.dart';
import 'package:tv_app/movies/domain/repository/base_movies_repository.dart';
import 'package:tv_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:tv_app/movies/domain/usecases/get_now_playing_usecase.dart';
import 'package:tv_app/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:tv_app/movies/domain/usecases/get_recommendation_usecase.dart';
import 'package:tv_app/movies/domain/usecases/get_top_rated_usecase.dart';
import 'package:tv_app/movies/presentation/controller/bloc/movie_detals_bloc.dart';
import 'package:tv_app/movies/presentation/controller/movies_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///Movie bloc
    sl.registerFactory(() => MoviesBloc(sl(), sl(), sl()));
    sl.registerFactory(() => MovieDetalsBloc(sl(), sl()));

    /// Use Case
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
    sl.registerLazySingleton(() => RecommendationUseCse(sl()));

    /// REPOSITORY
    sl.registerLazySingleton<BaseMoviesRepositry>(() => MoviesRepository(sl()));

    /// DATA SOURCE
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
