import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/cart_item.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/cart_repositopry.dart';
import 'package:southsea_cinema/views/movie_listing.dart';

const Movie testMovie = Movie(
  id: 'test spiderman', 
  title: 'Test Spider-Man (2002)', 
  age: '12A', 
  runtime: '2 hours', 
  synopsis: 'test', 
  price: 5.50, 
  imagePath: 'assets/images/spiderman_2002_poster.jpeg'
);

void main() {
  setUp(() {
    CartRepositopry.instance.clear();
  });

  testWidgets('OrderScreen shows quantity buttons and add to basket', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: MovieListing(movie: testMovie)),
    );

    expect(find.text('Order Test Spider-Man (2002)'), findsOneWidget);
    // expect(find.text('0 Test movie(s)'), findsOneWidget);
    expect(find.text('Add to Order'), findsOneWidget);
    expect(find.text('Remove Order'), findsOneWidget);
    expect(find.text('Add to Basket'), findsOneWidget);
  });

  testWidgets('Adding to basket without selecting quantity shows warning', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: MovieListing(movie: testMovie)),
    );

    await tester.tap(find.text('Add to Basket'));
    await tester.pump();

    expect(find.text('Please select at least 1 movie'), findsOneWidget);
    expect(CartRepositopry.instance.getItems(), isEmpty);
  });

  testWidgets('Adding to basket records quantity and movie', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: MovieListing(movie: testMovie)),
    );

    await tester.tap(find.text('Add to order'));
    await tester.pump();
    await tester.tap(find.text('Add to order'));
    await tester.pump();

    await tester.tap(find.text('Add to Basket'));
    await tester.pump();

    final List<CartItem> items = CartRepositopry.instance.getItems();
    expect(items.length, 1);

    final CartItem added = items.first;
    expect(added.quantity, 2);
    expect(added.movie.id, 'test spiderman');
    expect(added.movie.title, 'Test Spider-Man (2002)');
    expect(find.text('Added 2 Test ticket(s) to basket'), findsOneWidget);
  });
}

