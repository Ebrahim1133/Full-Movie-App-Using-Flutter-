import 'package:dartz/dartz.dart';
import 'package:movie_app/core/usecase/base_usecase.dart';
import 'package:movie_app/movies/domain/entities/movie.dart';
import 'package:movie_app/movies/domain/repository/base_movies_repository.dart';

import '../../../core/error/failure.dart';

class GetNowPlayingMoviesUseCase
    extends BaseUseCase<List<Movie>, NoParameters> {
  final BaseMoviesRepository baseMoviesRopository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRopository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters noParameters) async {
    return await baseMoviesRopository.getNowPlayingMovies();
  }
}
