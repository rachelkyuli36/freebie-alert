Feature: display list of events sorted by different criteria

  As an student who wants free stuff
  So that I can quickly browse events based on my preferences
  I want to see events sorted by the date of the event

Background: movies have been added to database

  Given the following posts exist:
  | title                        | type  | event_date | date_posted |
  | Waterbottles on Lerner Ramps | Merch | 2020-10-19 | 2020-10-19  |
  | Mochi Mingle                 | Food  | 2022-11-20 | 2022-10-27  |
  | Pojangmacha                  | Food  | 2022-11-03 | 2022-10-27  |


  And I am on the FreebieAlert home page
  Then 4 seed movies should exist

Scenario: sort movies in decreasing order of event date
  When I follow "Release Date"
  Then I should see "Mochi Mingle" before "Waterbottles on Lerner Ramps"
