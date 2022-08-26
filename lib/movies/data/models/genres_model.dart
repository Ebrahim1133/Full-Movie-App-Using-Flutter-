import 'package:movie_app/movies/domain/entities/genres.dart';

class GenresModel extends Genrse {
  const GenresModel({required int id, required String name})
      : super(id: id, name: name);

  factory GenresModel.fromJson(Map<String, dynamic> json) => GenresModel(
        id: json["id"],
        name: json['name'],
      );
}
