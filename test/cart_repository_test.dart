import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/cart_item.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/cart_repositopry.dart';

const Movie testMovie1 = Movie(
  id: 'spiderman', 
  title: 'Spider-Man (2002)', 
  age: '12A', 
  runtime: '2 hours', 
  synopsis: 'A shy teenager is bitten by a genetically modified spider and uses his new spider-like abilities to fight injustice as a masked superhero.',  
  price: 7.50, 
  imagePath: 'assets/images/spiderman_2002_poster.jpeg',
);

const Movie testMovie2 = Movie(
  id: 'batman', 
  title: 'The Batman', 
  age: '15', 
  runtime: '2 hours 30 mins', 
  synopsis: 'When a sadistic serial killer begins murdering key political figures in Gotham, the Batman is forced to investigate the hidden corruption in the city and question his involvement.', 
  price: 7.50, 
  imagePath: 'assets/images/the_batman_poster.jpeg'
);

const Movie testMovie3 = Movie(
  id: 'tmnt', 
  title: 'TMNT (2007)', 
  age: 'PG', 
  runtime: '1 hours 27 mins', 
  synopsis: 'When the world is threatened by an ancient evil, the Ninja Turtles must reunite and overcome their faults in order to stand against it.',
  price: 7.50, 
  imagePath: 'assets/images/tmnt_2007_poster.jpeg'
);
void main() {
  setUp(() {
    CartRepositopry.instance.clear();
  });

  group('CartRepository tests', () {
    final CartRepositopry cart = CartRepositopry.instance;
    expect(cart.getItems().length, 0);
    expect(cart.getTotalItems(), 0);
    expect(cart.totalItemCount, 0);
    expect(cart.getSubtotal(), 0.0);
    expect(cart.getDeliveryFee(), 0.0);
    expect(cart.getTotalDue(), 0.0);
  });

  test('adds items and calculates subtotal and dewlivery feee correctly', () {
    final CartRepositopry cart = CartRepositopry.instance;
    const CartItem item1 = CartItem(
      movie: testMovie1, 
      quantity: 2,
    );
    const CartItem item2 = CartItem(
      movie: testMovie2, 
      quantity: 1,
    );
    const CartItem item3 = CartItem(
      movie: testMovie3, 
      quantity: 3,
    );

    cart.addItem(item1);
    cart.addItem(item2);
    cart.addItem(item3);

    expect(cart.getItems().length, 3);
    expect(cart.getTotalItems(), 3);
    expect(cart.totalItemCount, 3);
    expect(cart.getSubtotal(), 22.5);
    expect(cart.getDeliveryFee(), 1.50);
    expect(cart.getTotalDue(), 24);
  });


}

