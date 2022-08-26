import 'package:dartz/dartz.dart';
import 'package:movie_app/core/usecase/base_usecase.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';
import '../repository/base_movies_repository.dart';

class GetPopularMoviesUseCase extends BaseUseCase<List<Movie>, NoParameters> {
  final BaseMoviesRepository baseMoviesRopository;

  GetPopularMoviesUseCase(this.baseMoviesRopository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters noParameters) async {
    return await baseMoviesRopository.getPopularMovies();
  }
}
