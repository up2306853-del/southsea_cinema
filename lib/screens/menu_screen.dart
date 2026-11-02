import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';
import 'package:southsea_cinema/widgets/movie_card.dart';

class MenuScreen extends StatelessElement {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext) {
    final MovieRepository repository = MovieRepository();
    final List<Movie> movie = repository.getMovies();
  }
}