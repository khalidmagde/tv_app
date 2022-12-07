part of 'movie_detals_bloc.dart';

class MovieDetalsState extends Equatable {
  final MovieDetail? movieDetail;
  final RequestState movieDetailsState;
  final String moveDetailsMessage;

  final List<Recommendation> recommendation;
  final RequestState recommendationState;
  final String recommendationMessage;

  const MovieDetalsState({
    ///TODO Variable
    this.movieDetail,
    this.movieDetailsState = RequestState.loading,
    this.moveDetailsMessage = '',
    this.recommendation = const [],
    this.recommendationState = RequestState.loading,
    this.recommendationMessage = '',
  });

  MovieDetalsState copyWith({
    MovieDetail? movieDetail,
    RequestState? movieDetailsState,
    String? moveDetailsMessage,
    List<Recommendation>? recommendation,
    RequestState? recommendationState,
    String? recommendationMessage,
  }) {
    return MovieDetalsState(
        movieDetail: movieDetail ?? this.movieDetail,
        movieDetailsState: movieDetailsState ?? this.movieDetailsState,
        moveDetailsMessage: moveDetailsMessage ?? this.moveDetailsMessage,
        recommendation: recommendation ?? this.recommendation,
        recommendationState: recommendationState ?? this.recommendationState,
        recommendationMessage:
            recommendationMessage ?? this.recommendationMessage);
  }

  @override
  List<Object?> get props => [
        movieDetail,
        movieDetailsState,
        moveDetailsMessage,
        recommendation,
        recommendationState,
        recommendationMessage,
      ];
}
