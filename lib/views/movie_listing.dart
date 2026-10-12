import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';


class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

  @override
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
                style: TextStyle(fontSize: 40, fontWeight: FontWeight(800)),
                
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
                "Stars Tobey Maguire as Peter Parker, a normal high school student",
                style: TextStyle(fontSize: 15.0),
                ),
              Text(
                "who is bullied and ignored by other students except for Harry Osborn played by James Franco",
                style: TextStyle(fontSize: 15.0),
                ),
              Text(
                "And Mary Jane played by Kirsten Dunce, his life is all normal until a spider bite gives him super powers",
                style: TextStyle(fontSize: 15.0),
                ),
              Text(
                "All of the sudden there is a flying criminal named Green Goblin played by Willam Dafoe terrorizing New York City",
                style: TextStyle(fontSize: 15.0),
                ),
              Text(
                "Can Spider-Man save the city from this criminal?",
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
                initialSelection: 10,
                onSelected: (int? value) {
                  print(value);
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

             

        
              
            ],
          )),
    );
  }
}
// () {}