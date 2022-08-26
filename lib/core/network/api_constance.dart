class ApiConstance {
  static const String BASE_API = "https://api.themoviedb.org/3";
  static const String API_KEY = "a7a68bd64f080f68de1ab0dd3f5858a1";
  static const String NOW_PLAYING_MOVIES_PATH =
      "$BASE_API/movie/now_playing?api_key=$API_KEY";
  static const String POPULAR_MOVIES_PATH =
      "$BASE_API/movie/popular?api_key=$API_KEY";
  static const String TOP_RATED_MOVIES_PATH =
      "$BASE_API/movie/top_rated?api_key=$API_KEY";
  static String MOVIE_DETAIL_PATH(int movieId) =>
      "$BASE_API/movie/$movieId?api_key=$API_KEY";
  static String RECOMMENDATION_PATH(int movieId) =>
      "$BASE_API/movie/$movieId/recommendations?api_key=$API_KEY";
  static const String BASE_IMAGE_URL = "https://image.tmdb.org/t/p/w500";
  static String imageUrl(String path) => "$BASE_IMAGE_URL/$path";
}
