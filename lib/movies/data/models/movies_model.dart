import 'package:movie_app/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required int id,
    required String backdropPath,
    required String title,
    required List<int> genreIds,
    required String overview,
    required double voteAverage,
    required String releaseDate,
  }) : super(
            id: id,
            backdropPath: backdropPath,
            title: title,
            genreIds: genreIds,
            overview: overview,
            voteAverage: voteAverage,
            releaseDate: releaseDate);

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json["id"],
        backdropPath: json["backdrop_path"],
        title: json['title'],
        genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
        overview: json['overview'],
        voteAverage: json['vote_average'].toDouble(),
        releaseDate: json['release_date'],
      );
}
