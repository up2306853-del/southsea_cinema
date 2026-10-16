class Movie {
  final String id;
  final String title;
  final String age_rating;
  final String runtime;
  final String synopsis;
  final double ticket_price;
  final String imagePath;

  const Movie({
    required this.id,
    required this.title,
    required this.age_rating,
    required this.runtime,
    required this.synopsis,
    required this.ticket_price,
    required this.imagePath
  });
}