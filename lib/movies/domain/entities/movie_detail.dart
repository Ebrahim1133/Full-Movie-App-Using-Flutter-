import 'package:equatable/equatable.dart';

import 'genres.dart';

class MovieDetail extends Equatable {
  final int id;
  final String backdropPath;
  final String overview;
  final String releaseDate;
  final List<Genrse> genrse;
  final int runtime;
  final String title;
  final double voteAverage;

  const MovieDetail(
      {required this.id,
      required this.genrse,
      required this.backdropPath,
      required this.overview,
      required this.releaseDate,
      required this.runtime,
      required this.title,
      required this.voteAverage});

  @override
  List<Object> get props => [
        id,
        backdropPath,
        overview,
        releaseDate,
        runtime,
        title,
        voteAverage,
        genrse
      ];
}
