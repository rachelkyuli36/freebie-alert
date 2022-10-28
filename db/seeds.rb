# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# title, event_date, release_date, date_posted_type

posts = [
  { title: 'Waterbottles on Lerner Ramps', event_date: '2020-10-20', date_posted: '2020-10-19', type: 'merch'}
]

posts.each do |post|
  Post.create!(post)
end
