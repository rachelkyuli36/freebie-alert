
# title, event_date, release_date, date_posted_type

posts = [
  { title: 'Waterbottles on Lerner Ramps', event_date: '2020-10-20', date_posted: '2020-10-19', type: 'merch'}
]

posts.each do |post|
  Post.create!(post)
end
