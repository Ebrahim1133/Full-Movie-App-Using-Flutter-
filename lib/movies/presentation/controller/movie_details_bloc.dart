import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/enums.dart';
import 'package:movie_app/movies/domain/entities/recommendation.dart';
import 'package:movie_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movie_app/movies/domain/usecases/get_recommendation_usecase.dart';

import '../../domain/entities/movie_detail.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(this.getMovieDetailsUaseCase, this.getRecommendationUseCase)
      : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
    on<GetMovieRecommendationEvent>(_getRecommendation);
  }
  final GetMovieDetailsUaseCase getMovieDetailsUaseCase;
  final GetRecommendationUseCase getRecommendationUseCase;
  FutureOr<void> _getMovieDetails(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    final result = await getMovieDetailsUaseCase(MovieDetailsParameters(
      movieId: event.id,
    ));

    result.fold(
        (l) => emit(state.copywith(
              movieDetailsState: RequestState.error,
              movieDetailsMessage: l.message,
            )),
        (r) => emit(
              state.copywith(
                movieDetail: r,
                movieDetailsState: RequestState.loaded,
              ),
            ));
  }

  FutureOr<void> _getRecommendation(GetMovieRecommendationEvent event,
      Emitter<MovieDetailsState> emit) async {
    final result = await getRecommendationUseCase(RecommendationParameters(
      id: event.id,
    ));

    result.fold(
        (l) => emit(state.copywith(
              recommendationState: RequestState.error,
              recommendationMessage: l.message,
            )),
        (r) => emit(
              state.copywith(
                recommendation: r,
                recommendationState: RequestState.loaded,
              ),
            ));
  }
}
