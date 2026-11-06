import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';

void main() {
  group('Movie model tests', () {
    test('creates Movie Instances with given propertiess', () {
      const movie = Movie(
          id: 'tmnt',
          title: 'TMNT (2007)',
          age: 'PG',
          runtime: '1 hours 27 mins',
          synopsis:
              'When the world is threatened by an ancient evil, the Ninja Turtles must reunite and overcome their faults in order to stand against it.',
          price: 7.50,
          imagePath: 'assets/images/tmnt_2007_poster.jpeg');

      expect(movie.id, 'tmnt');
      expect(movie.title, 'TMNT (2007)');
      expect(movie.age, 'PG');
      expect(movie.runtime, '1 hours 27 mins');
      expect(movie.synopsis,
          'When the world is threatened by an ancient evil, the Ninja Turtles must reunite and overcome their faults in order to stand against it.');
      expect(movie.price, 7.50);
      expect(movie.imagePath, 'assets/images/tmnt_2007_poster.jpeg');
    });

    test(
        'formattedPrice returns price prefixed with pound sign and two decimals',
        () {
      const movie = Movie(
          id: 'spiderman',
          title: 'Spider-Man (2002)',
          age: '12A',
          runtime: '2 hours',
          synopsis:
              'A shy teenager is bitten by a genetically modified spider and uses his new spider-like abilities to fight injustice as a masked superhero.',
          price: 7.50,
          imagePath: 'assets/images/spiderman_2002_poster.jpeg');

      expect(movie.formattedPrice, '£7.50');
    });
  });
}
