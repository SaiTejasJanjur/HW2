# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'}
  {:title => 'Spirited Away', :rating => 'PG',
   :release_date => '20-July-2001'}
  {:title => 'Inception', :rating => 'PG-13',
   :release_date => '16-July-2010'}
  {:title => 'The Lion King', :rating => 'G',
   :release_date => '24-June-1994'}
  {:title => 'Interstellar', :rating => 'PG-13',
   :release_date => '7-November-2014'}
    
]

more_movies.each do |movie|
  Movie.create!(movie) unless Movie.exists?(title: movie[:title]) 
end