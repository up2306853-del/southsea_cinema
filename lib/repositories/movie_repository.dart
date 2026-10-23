import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {
  List<Movie> getMovies() {
    return const [
      Movie(id: 'spider-man', 
      title: 'Spider-Man (2002)', 
      age_rating: '12A', 
      runtime: '2 hours', 
      synopsis: 'A shy teenager is bitten by a genetically modified spider and uses his new spider-like abilities to fight injustice as a masked superhero.',
     ticket_price: 7.50, 
     imagePath: 'assets/pictures/spiderman_2002_poster.png',
     ),
     Movie(id: 'batman', 
     title: 'The Batman', 
     age_rating: '15', 
     runtime: '2 hours and 30 minutes', 
     synopsis: 'When a sadistic serial killer begins murdering key political figures in Gotham, the Batman is forced to investigate the hidden corruption of Gotham and question the involvement of his family.',
     ticket_price: 7.50, 
     imagePath: 'assets/pictures/the_batman_poster.png',
     ),
    ];
  }

}