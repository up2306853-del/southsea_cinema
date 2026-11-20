import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/basket_button.dart';
import 'package:southsea_cinema/models/cart_item.dart';
import 'package:southsea_cinema/repositories/cart_repositopry.dart';
import 'package:southsea_cinema/widgets/primary_button.dart';

class MovieListing extends StatefulWidget {
  final Movie movie;
  final int maxQuantity;

 const MovieListing({
  super.key,
  required this.movie,
  this.maxQuantity = 10,
 });

 @override
  State<MovieListing> createState() => _MovieListingState();

}

class _MovieListingState extends State<MovieListing> {
  int _ticketQuantity = 0;
  String _confirmationMessage = '';



  void _addToBasket() {
    if (_ticketQuantity > 0) {
      final CartItem item = CartItem(
        movie: widget.movie, 
        quantity: _ticketQuantity,
      );
      CartRepositopry.instance.addItem(item);
      setState(() {
        _confirmationMessage = 
        'Added $_ticketQuantity tocket(s) for ${widget.movie.title} to basket';
      });
    } else {
      setState(() {
        _confirmationMessage = 'Please select at least 1 movie';
      });
    }
  }


  void _increaseQuantity() {
    if (_ticketQuantity < widget.maxQuantity) {
      setState(() {
        _ticketQuantity ++;
      });
    }
  }

  void _decreaseQuantity() {
    if (_ticketQuantity > 0){
      setState(() {
        _ticketQuantity --;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle,),
        actions: const [BasketButton()],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order ${widget.movie.title}',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decreaseQuantity, 
                  child: const Text('Remove Order'),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: _increaseQuantity,
                  child: const Text('Add to Order'),
                ),
              ],
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: PrimaryButton(
                label: 'Add to Basket', 
                onPressed: _addToBasket,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              _confirmationMessage,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),

      )
  );
  }

}
// () {}


class OrderItemDisplay extends StatelessWidget {
  final String movie;
  final int ticket;

  const OrderItemDisplay(this.ticket, this.movie, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text('$ticket ticket(s): $ticket');
  }
}