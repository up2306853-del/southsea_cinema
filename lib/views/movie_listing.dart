import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/main.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  final Movie movie;
  final int maxQuantity;

 const MovieListing({
  super.key,
  required this.movie,
  this.maxQuantity = 10,
 });

 @override
 State<MovieListing> createState() {
  return _MovieListingState();
 }
}

class _MovieListingState extends State<MovieListing> {
  int _ticketQuantity = 0;


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
        title: Text('Book ${widget.movie.title}',style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget> [
              OrderItemDisplay(
                _ticketQuantity, 
                widget.movie.title,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: _increaseQuantity, 
                      child: const Text('Book'),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: _decreaseQuantity, 
                      child: const Text('Remove'),
                    )
                  ],
                )
              ],
             
          )),
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
    return Text('$ticket $movie ticket(s): $ticket');
  }
}