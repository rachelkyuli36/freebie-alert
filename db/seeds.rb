# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movies = [
  { title: 'Aladdin', type: 'G', event_date: '25-Nov-1992'},
  { title: 'The Terminator', type: 'R', release_date: '26-Oct-1984' },
  { title: 'When Harry Met Sally', type: 'R', release_date: '21-Jul-1989' },
  { title: 'The Help', type: 'PG-13', release_date: '10-Aug-2011' },
  { title: 'Chocolat', type: 'PG-13', release_date: '5-Jan-2001' },
  { title: 'Amelie', type: 'R', release_date: '25-Apr-2001' },
  { title: '2001: A Space Odyssey', type: 'G', release_date: '6-Apr-1968' },
  { title: 'The Incredibles', type: 'PG', release_date: '5-Nov-2004' },
  { title: 'Raiders of the Lost Ark', type: 'PG', release_date: '12-Jun-1981' },
  { title: 'Chicken Run', type: 'G', release_date: '21-Jun-2000' },
]

movies.each do |movie|
  Movie.create!(movie)
end
