import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';

void main() {
  group('Movie model tests', () {
    test('creates movie instance with given properties', () {
      const Movie(
        id: 'tmnt', 
        title: 'TMNT (2007)',
        age: 'PG', 
        runtime: '1 hour and 27 mins', 
        synopsis: 'When the world is threatened by an ancient evil, the Ninja Turtles must reunite and overcome their faults in order to stand against it.', 
        price: 7.50, 
        imagePath: 'assets/images/tmnt_2007_poster.jpeg',
      );
    });
  });
}