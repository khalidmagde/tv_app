part of 'movie_detals_bloc.dart';

abstract class MovieDetalsEvent extends Equatable {
  const MovieDetalsEvent();
}

class GetMovieDetailsEvent extends MovieDetalsEvent {
  final int id;

  const GetMovieDetailsEvent(this.id);
  @override
  List<Object> get props => [id];
}

class GetMovieRecommendationEvent extends MovieDetalsEvent {
  final int id;

  const GetMovieRecommendationEvent(this.id);
  @override
  List<Object?> get props => [id];
}
