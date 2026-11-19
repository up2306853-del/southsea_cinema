import 'package:southsea_cinema/models/cart_item.dart';

class CartRepositopry {
  CartRepositopry._internal();
  static final CartRepositopry instance = CartRepositopry._internal();

  final List<CartItem> _items = [];

  List<CartItem> getItems() {
    return List<CartItem>.unmodifiable(_items);
  }
}