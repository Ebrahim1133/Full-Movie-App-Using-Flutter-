import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecase/base_usecase.dart';
import '../entities/movie.dart';
import '../repository/base_movies_repository.dart';

class GetTopRatedMoviesUseCase extends BaseUseCase<List<Movie>, NoParameters> {
  final BaseMoviesRepository baseMoviesRopository;

  GetTopRatedMoviesUseCase(this.baseMoviesRopository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters noParameters) async {
    return await baseMoviesRopository.getTopRatedMovies();
  }
}
