class Movie {
  final String id;
  final String title;
  final String age;
  final String runtime;
  final String synopsis;
  final double price;
  final String imagePath;

  const Movie(
      {required this.id,
      required this.title,
      required this.age,
      required this.runtime,
      required this.synopsis,
      required this.price,
      required this.imagePath});

  String get formattedPrice => '£${price.toStringAsFixed(2)}';

  factory Movie.fromJson(Map<String, dynamic> json) {
    final String id = json['id'] as String;
    final String title = json['title'] as String;
    final String age = json['age'] as String;
    final String runtime = json['runtime'] as String;
    final String synopsis = json['synopsis'] as String;
    final double price = json['price'] as double;
    final String imagePath = json['imagePath'] as String;

    return Movie(
      id: id, 
      title: title, 
      age: age, 
      runtime: runtime, 
      synopsis: synopsis, 
      price: price, 
      imagePath: imagePath,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{
      'id': id, 
      'title': title, 
      'age': age, 
      'runtime': runtime, 
      'synopsis': synopsis, 
      'price': price, 
      'imagePath': imagePath,
    };
    return data;
  }
}
