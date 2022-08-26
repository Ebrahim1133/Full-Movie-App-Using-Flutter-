import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String backdropPath;
  final String title;

  final List<int> genreIds;
  final String overview;
  final double voteAverage;
  final String releaseDate;

  const Movie(
      {required this.id,
      required this.backdropPath,
      required this.title,
      required this.genreIds,
      required this.overview,
      required this.voteAverage,
      required this.releaseDate});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, backdropPath, title, genreIds, overview, voteAverage, releaseDate];
}
