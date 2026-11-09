import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/views/home_view.dart';
// import 'package:southsea_cinema/views/movie_listing.';
// import 'package:southsea_cinema/views/menu_screen.dart';

void main() {
  runApp(const SouthseaCinemaApp());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Southsea Cinema',
      home: HomeView(),
    );
  }
}

class SouthseaCinemaApp extends StatelessWidget {
  const SouthseaCinemaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: cinemaBackground,
        colorScheme: ColorScheme.fromSeed(
          seedColor: cinemaBrand,
          primary: cinemaBrand,
          surface: cinemaSurface,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeView(),
        // '/listing': (context) => const MovieListing(),
      },
    );
  }
}


class OrderItemDisplay extends StatelessWidget {
  final String itemType;
  final Int quantity;

  OrderItemDisplay(this.quantity, this.itemType, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text('$quantity $itemType ticket(s): $quantity');
  }
}
