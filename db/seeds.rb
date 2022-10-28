
# title, event_date, release_date, date_posted_type

posts = [
  { title: 'Waterbottles on Lerner Ramps', type: 'Merch', event_date: '2020-10-20', date_posted: '2020-10-19'},
  { title: 'Mochi Mingle', type: 'Food', event_date: '2022-11-20', date_posted: '2022-10-27'},
  { title: 'Pojangmacha', type: 'Food', event_date: '2022-11-03', date_posted: '2022-10-27'},
]

posts.each do |post|
  Post.create!(post)
end
