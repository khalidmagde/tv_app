import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tv_app/core/error/failure.dart';
import 'package:tv_app/core/usecase/base_usecase.dart';
import 'package:tv_app/movies/domain/entites/recommendation.dart';
import 'package:tv_app/movies/domain/repository/base_movies_repository.dart';

class RecommendationUseCse
    extends BaseUseCase<List<Recommendation>, RecommendationParameters> {
  final BaseMoviesRepositry baseMoviesRepositry;

  RecommendationUseCse(this.baseMoviesRepositry);
  @override
  Future<Either<Failure, List<Recommendation>>> excute(
      RecommendationParameters parameters) async {
    return await baseMoviesRepositry.getRecommendation(parameters);
  }
}

class RecommendationParameters extends Equatable {
  final int id;

  const RecommendationParameters(this.id);

  @override
  List<Object?> get props => [id];
}
