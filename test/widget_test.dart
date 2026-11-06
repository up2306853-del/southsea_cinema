import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/main.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/screens/menu_screen.dart';

void main() {
  group('App smoke tests', () {
    testWidgets('App displays MenuScreen as home', (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(MenuScreen), findsOneWidget);
      expect(find.text('Southsea Cinema'), findsOneWidget);
    });

    testWidgets('Displays movie cards with names and prices',
        (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      expect(find.text('The Batman'), findsOneWidget);
      expect(find.text('TMNT (2007)'), findsOneWidget);
      expect(find.text('£7.50'), findsNWidgets(3));
      expect(find.text('Book Now'), findsNWidgets(3));
    });
  });
}
