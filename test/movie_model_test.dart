import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';

void main() {
  group('Movie model tests', () {
    test('creates Movie Instances with given propertiess', () {
      const movie = Movie(
        id: 'tmnt', 
        title: 'TMNT (2007)', 
        age: 'PG', 
        runtime: '1 hours 27 mins', 
        synopsis: 'When the world is threatened by an ancient evil, the Ninja Turtles must reunite and overcome their faults in order to stand against it.',
        price: 7.50, 
        imagePath: 'assets/images/tmnt_2007_poster.jpeg'
      );

      expect(movie.id, 'tmnt');
      expect(movie.title, 'TMNT (2007)');
      expect(movie.age, 'PG');
      expect(movie.runtime, '1 hours 27 mins');
      expect(movie.synopsis, 'When the world is threatened by an ancient evil, the Ninja Turtles must reunite and overcome their faults in order to stand against it.');
      expect(movie.price, 7.50);
      expect(movie.imagePath, 'assets/images/tmnt_2007_poster.jpeg');
    });
  });
}