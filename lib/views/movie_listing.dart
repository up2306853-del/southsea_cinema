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
      body: Container(child: Column(
        children: [
          Text("Spider-Man"),
          Row(
            spacing: 10.0,
            children: [
              Text("Released in 2002",
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold 
              ),)
            ],
              
          )
        ], 
      ) ),
    );
  }
}
