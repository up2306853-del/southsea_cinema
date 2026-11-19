import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/cart_repositopry.dart';
import 'package:southsea_cinema/models/cart_item.dart';
import 'package:southsea_cinema/views/basket_screen.dart';

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

  testWidgets('BasketScren displays empty message when basket has no items', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: BasketScreen()));

    expect(find.text('Your basket is empty'), findsOneWidget);
    expect(find.text('Checkout'), findsNothing);
  });

  testWidgets('BasketScreen renders items and removes item when delete pressed', (WidgetTester tester) async {
    const CartItem item = CartItem(
      movie: testMovie, 
      quantity: 2,
    );
    CartRepositopry.instance.addItem(item);

    await tester.pumpWidget(const MaterialApp(home: BasketScreen()));

    expect(find.text('Your basket'), findsOneWidget);
    expect(find.text(' 2 * Spider-Man (2002)'), findsOneWidget);
    expect(find.text('£15.00'), findsWidgets);
    expect(find.text('Checkout'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.delete_outline));
    await tester.pump();

    expect(find.text('Your basket is empty'), findsOneWidget);
  });
}