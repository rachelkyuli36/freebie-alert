# Add a declarative step here for populating the DB with movies.

Given /the following posts exist/ do |posts_table|
  posts_table.hashes.each do |post|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Post.create(:title => post['title'], :type => post['type'], :event_date => post['event_date'], :date_posted => post['date_posted'])
  end
  #pending "Fill in this step in movie_steps.rb"
end

Then /(.*) seed posts should exist/ do | n_seeds |
  expect(Post.count).to eq n_seeds.to_i
end

# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  expect(/[\s\S]*#{e1}[\s\S]*#{e2}/).to match(page.body)
end

# Make it easier to express checking or unchecking several boxes at once
#  "When I uncheck the following ratings: PG, G, R"
#  "When I check the following ratings: G"

When /I (un)?check the following types: (.*)/ do |uncheck, types_list|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
  types = types_list.split(', ')
  types.each do |type|
    uncheck ? uncheck(type) : check(type)
  end
end

# Part 2, Step 3
Then /^I should (not )?see the following posts: (.*)$/ do |no, post_list|
  # Take a look at web_steps.rb Then /^(?:|I )should see "([^"]*)"$/
  posts = post_list.split(', ')
  posts.each do |post|
    if no 
      expect(page).not_to have_content(post)
    else
      expect(page).to have_content(post)
    end
  end
end

Then /I should see all the posts/ do
  # Make sure that all the movies in the app are visible in the table
  expect(page).to have_selector("tr", count: Post.count + 1)
end

### Utility Steps Just for this assignment.

Then /^debug$/ do
  # Use this to write "Then debug" in your scenario to open a console.
   require "byebug"; byebug
  1 # intentionally force debugger context in this method
end

Then /^debug javascript$/ do
  # Use this to write "Then debug" in your scenario to open a JS console
  page.driver.debugger
  1
end


Then /complete the rest of of this scenario/ do
  # This shows you what a basic cucumber scenario looks like.
  # You should leave this block inside movie_steps, but replace
  # the line in your scenarios with the appropriate steps.
  fail "Remove this step from your .feature files"
end
