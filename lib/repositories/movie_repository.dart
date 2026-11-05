import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {
  List<Movie> getMovies() {
    return const [
      Movie(
        id: 'spiderman', 
        title: 'Spider-Man (2002)', 
        age: '12A', 
        runtime: '2 hours', 
        synopsis: 'A shy teenager is bitten by a genetically modified spider and uses his new spider-like abilities to fight injustice as a masked superhero.', 
        price: 7.50, 
        imagePath: 'assets/images/spiderman_2002_poster.jpeg'
        ),
      Movie(
        id: 'batman', 
        title: 'The Batman', 
        age: '15', 
        runtime: '2 hours 30 mins', 
        synopsis: 'When a sadistic serial killer begins murdering key political figures in Gotham, the Batman is forced to investigate the hidden corruption in the city and question his involvement.', 
        price: 7.50, 
        imagePath: 'assets/images/the_batman_poster.jpeg'
        ),
    ];
  }
}