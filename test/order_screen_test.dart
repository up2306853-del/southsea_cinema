import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/cart_item.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/cart_repositopry.dart';
import 'package:southsea_cinema/views/movie_listing.dart';

const Movie testMovie = Movie(
  id: 'spiderman', 
  title: 'Spider-Man (2002)', 
  age: '12A', 
  runtime: '2 hours', 
  synopsis: 'A shy teenager is bitten by a genetically modified spider and uses his new spider-like abilities to fight injustice as a masked superhero.', 
  price: 7.50, 
  imagePath: 'assets/images/spiderman_2002_poster.jpeg'
);

void main() {
  setUp(() {
    CartRepositopry.instance.clear();
  });
}

