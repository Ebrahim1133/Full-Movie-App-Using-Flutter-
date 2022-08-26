import 'package:movie_app/movies/data/models/genres_model.dart';
import 'package:movie_app/movies/domain/entities/genres.dart';
import 'package:movie_app/movies/domain/entities/movie_detail.dart';

class MovieDetailsModel extends MovieDetail {
  MovieDetailsModel(
      {required int id,
      required List<Genrse> genrse,
      required String backdropPath,
      required String overview,
      required String releaseDate,
      required int runtime,
      required String title,
      required double voteAverage})
      : super(
            id: id,
            genrse: genrse,
            backdropPath: backdropPath,
            overview: overview,
            releaseDate: releaseDate,
            runtime: runtime,
            title: title,
            voteAverage: voteAverage);

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
        id: json["id"],
        backdropPath: json["backdrop_path"],
        title: json['title'],
        genrse: List<GenresModel>.from(
            json['genres'].map((x) => GenresModel.fromJson(x))),
        overview: json['overview'],
        voteAverage: json['vote_average'].toDouble(),
        releaseDate: json['release_date'],
        runtime: json['runtime'],
      );
}
