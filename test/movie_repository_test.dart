import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';

void main() {
  group('MovieRepository unit tests', () {
    test('getMovies returns three movies', () {
      final MovieRepository repository = MovieRepository();
      final List<Movie> movies = repository.getMovies();

      expect(movies.length, 3);

    });

    test('getMovies contains valid spiderman and batman films', () {
      final MovieRepository repository = MovieRepository();
      final List<Movie> movies = repository.getMovies();

      final Movie spiderman = movies[0];
      expect(spiderman.id, 'spiderman');
      expect(spiderman.title, 'Spider-Man (2002)');
      expect(spiderman.price, 7.50);
      expect(spiderman.imagePath, isNotNull);

      final Movie batman = movies[1];
      expect(batman.id, 'batman');
      expect(batman.title, 'The Batman');
      expect(batman.price, 7.50);
      expect(batman.imagePath, isNotNull);
    });

    test('getMoviesById returns matching movie when id exists', () {
      final MovieRepository repository = MovieRepository();
      final Movie? movies = repository.getMoviesById('tmnt');

      expect(movies, isNotNull);
      expect(movies?.title, 'TMNT (2007)');
      expect(movies?.price, 7.50);
    });

    test('getMoviesById returns null when id does not exist', () {
      final MovieRepository repository = MovieRepository();
      final Movie? movies = repository.getMoviesById('non-existent');

      expect(movies, isNull);
    });

  });
}