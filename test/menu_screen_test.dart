import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/views/basket_screen.dart';
import 'package:southsea_cinema/views/home_view.dart';
import 'package:southsea_cinema/widgets/movie_card.dart';

void main() {
  testWidgets('Menuscreen shows the movie list and a basket button', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: HomeView()));

    expect(find.byType(MovieCard), findsWidgets);
    expect(find.byIcon(Icons.shopping_basket), findsOneWidget);
  });

  testWidgets('Tapping the basket button navigaets to BasketScreen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) {
            return const HomeView();
          },            
        },
      ),
    );

    await tester.tap(find.byIcon(Icons.shopping_basket));
    await tester.pumpAndSettle();
    
    expect(find.byType(BasketScreen), findsOneWidget);
  
  });
}