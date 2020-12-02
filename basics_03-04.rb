movies = {
  die_another_day: 1975,
  step_brothers: 2004,
  sharknado: 2013,
  missionimpossible: 2001,
  terminator: 1981
}

movies.each_value { |value| puts value }

movie_years = []

movies.each_value { |value| movie_years.push(value) }

puts movie_years
