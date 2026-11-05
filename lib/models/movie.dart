class Movie {
  final String id;
  final String title;
  final String age;
  final String runtime;
  final String synopsis;
  final double price;
  final String imagePath;

  const Movie({
    required this.id, 
    required this.title, 
    required this.age, 
    required this.runtime, 
    required this.synopsis, 
    required this.price, 
    required this.imagePath
  });

    String get formattedPrice => '£${price.toStringAsFixed(2)}';
}