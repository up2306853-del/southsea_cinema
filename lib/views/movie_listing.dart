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
                "Spider-Man",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight(800)),
                
              ),
              Text(
                "Released in 2002",
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
                
              )
              
              
              
            ],
          )),
    );
  }
}
