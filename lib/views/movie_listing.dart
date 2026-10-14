import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';



class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  @override
  int _ticketQuantity = 0;
  String _bookingMessage = '';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Spider-Man (2002) (12A)",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight(1000)),
                
              ),
              Text(
                "Southsea Cinema Room",
                style: TextStyle(fontSize: 15.0),
                ),
              Text(
                "Tuesday 13/10/2026, 14:00 - 16:01",
                style: TextStyle(fontSize: 15.0),
                ),  
              Text(                
                "Please note that Discounts / Membership Benifits will be applied once you have selected your tickets",
                style: TextStyle(fontSize: 15.0),                
              ),
              Text(
                "Select Tickets (Up to 10 in total)",
                style: TextStyle(fontSize: 15.0),
              ),
              
              
              DropdownMenu(
                initialSelection: _ticketQuantity,
                onSelected: (int? value) {
                  if (value != null) {
                    setState(() {
                      _ticketQuantity = value;
                      print('Tickets selected: $_ticketQuantity');
                    });
                  }
                },
                
                dropdownMenuEntries: [
                  DropdownMenuEntry(value: 10, label: '10 Tickets'),
                  DropdownMenuEntry(value: 9, label: '9 Tickets'),
                  DropdownMenuEntry(value: 8, label: '8 Tickets'),
                  DropdownMenuEntry(value: 7, label: '7 Tickets'),
                  DropdownMenuEntry(value: 6, label: '6 Tickets'),
                  DropdownMenuEntry(value: 5, label: '5 Tickets'),
                  DropdownMenuEntry(value: 4, label: '4 Tickets'),
                  DropdownMenuEntry(value: 3, label: '3 Tickets'),
                  DropdownMenuEntry(value: 2, label: '2 Tickets'),
                  DropdownMenuEntry(value: 1, label: '1 Ticket')
                  
              ]
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    print('Added $_ticketQuantity ticekt to order');
                  });
                },
                child: const Text('Add to order'),
              )
                



        
              
            ],
          )),
    );
  }
}
// () {}