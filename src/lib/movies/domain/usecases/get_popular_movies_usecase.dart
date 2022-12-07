import 'package:dartz/dartz.dart';
import 'package:tv_app/core/usecase/base_usecase.dart';
import 'package:tv_app/movies/domain/entites/movie.dart';
import 'package:tv_app/movies/domain/repository/base_movies_repository.dart';

import '../../../core/error/failure.dart';

class GetPopularMoviesUseCase extends BaseUseCase<List<Movie>, NoParameters> {
  final BaseMoviesRepositry baseMoviesRepositry;

  GetPopularMoviesUseCase(this.baseMoviesRepositry);

  @override
  Future<Either<Failure, List<Movie>>> excute(NoParameters noParameters) async {
    return await baseMoviesRepositry.getPopularMovies();
  }
}
