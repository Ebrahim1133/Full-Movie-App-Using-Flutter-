import 'package:movie_app/movies/domain/entities/recommendation.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({String? backdropPath, required int id})
      : super(backdropPath: backdropPath, id: id);
  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      RecommendationModel(
        id: json["id"],
        backdropPath:
            json["backdrop_path"] ?? '/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg',
      );
}
