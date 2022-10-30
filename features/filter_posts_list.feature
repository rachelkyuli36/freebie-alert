Feature: display list of posts filtered by type of free stuff

  As a student user
  So that I can quickly browse for the type of stuff I want
  I want to see events matching the type of stuff I want

Background: posts have been added to database

  Given the following posts exist:
  | title                        | type  | event_date | date_posted |
  | Waterbottles on Lerner Ramps | Merch | 2020-10-19 | 2020-10-19  |
  | Mochi Mingle                 | Food  | 2022-11-20 | 2022-10-27  |
  | Pojangmacha                  | Food  | 2022-11-03 | 2022-10-27  |

  And  I am on the FreeAlert home page
  Then 3 seed posts should exist

Scenario: restrict to posts with type "merch"
  Given I check the following types: merch
  And I uncheck the following types: food, other
  And I press "Refresh"
  Then I should see the following posts: Waterbottles on Lerner Ramps
  Then I should not see the following posts: Mochi Mingle, Pojangmacha

Scenario: all types selected
  Given I check the following types: food, merch, other
  Then I should see all the posts
