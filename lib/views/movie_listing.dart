import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
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
        title: Text(widget.movie.title,style: cinemaHeaderStyle),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                    widget.movie.imagePath,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.movie.title,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.movie.synopsis,
                      ),
                      DropdownMenu<int>(
                        initialSelection: _ticketQuantity,
                        onSelected: (int? value) {
                          if (value != null) {
                            setState(() {
                              _ticketQuantity = value;
                              print('Tickets: $_ticketQuantity');
                            });
                          }
                        },
                        dropdownMenuEntries: [
                          DropdownMenuEntry(value: 1, label: '1'),
                          DropdownMenuEntry(value: 2, label: '2'),
                          DropdownMenuEntry(value: 3, label: '3'),
                          DropdownMenuEntry(value: 4, label: '4'),
                          DropdownMenuEntry(value: 5, label: '5'),
                          DropdownMenuEntry(value: 6, label: '6'),
                          DropdownMenuEntry(value: 7, label: '7'),
                          DropdownMenuEntry(value: 8, label: '8'),
                          DropdownMenuEntry(value: 9, label: '9'),
                          DropdownMenuEntry(value: 10, label: '10'),
                        ],                   
                      ),
                    ]),
                  )],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: _increaseQuantity, 
                      child: const Text('Book'),
                    ),
                  ],
                )
              ],
             
          ),
    ));
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