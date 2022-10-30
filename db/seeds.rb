
# title, event_date, release_date, date_posted_type

movies = [
  { title: 'Waterbottles on Lerner Ramps', rating: 'MERCH', event_date: '2020-10-20'},
  { title: 'Mochi Mingle', rating: 'FOOD', event_date: '2022-11-20'},
  { title: 'Pojangmacha', rating: 'FOOD', event_date: '2022-11-03'},
]

movies.each do |movie|
  Movie.create!(movie)
end
