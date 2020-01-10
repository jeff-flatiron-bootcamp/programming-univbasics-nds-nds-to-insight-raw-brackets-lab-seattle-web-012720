$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  pp directors_database
  
  result = {
  }
  
  director_index = 0
  dd = directors_database
  while (dd[director_index]) do
    director_name_to_insert = dd[director_index][:name]
    movie_index = 0
    movie_gross_total = 0
    while(dd[director_index][:movies][movie_index]]) do
      movie_gross_total = movie_gross_total + dd[director_index][:movies][movie_index][:worldwide_gross]
      movie_index+=1
    end
    result[director_name_to_insert] = movie_gross_total
    director_index+=1
  end
  
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
  result
end
