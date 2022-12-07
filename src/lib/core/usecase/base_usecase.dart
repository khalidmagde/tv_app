import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tv_app/core/error/failure.dart';
import 'package:tv_app/movies/domain/entites/movie.dart';

abstract class BaseUseCase<T, parameters> {
  Future<Either<Failure, T>> excute(parameters parameters);
}

class NoParameters extends Equatable {
  const NoParameters();

  @override
  List<Object?> get props => [];
}
