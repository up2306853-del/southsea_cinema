class Booking {
  final int? id;
  final String title;
  final double price;
  final String synopsis;
  final String runtime;
  final String age;

  const Booking({
    this.id,
    required this.title,
    required this.synopsis,
    required this.age,
    required this.price,
    required this.runtime,
  });
}