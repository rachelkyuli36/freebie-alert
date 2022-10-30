Feature: Edit a post

  As a student user
  So that I can edit a post
  I want to be able to change the information of a posted event

Background: posts have been added to database

  Given the following posts exist:
  | title                        | type  | event_date | date_posted |
  | Waterbottles on Lerner Ramps | Merch | 2020-10-19 | 2020-10-19  |
  | Mochi Mingle                 | Food  | 2022-11-20 | 2022-10-27  |
  | Pojangmacha                  | Food  | 2022-11-03 | 2022-10-27  |

Scenario: change event date of existing post
  When I go to the edit page for "Mochi Mingle"
  And I fill in "Event Date" with "2022-12-02"
  And I press "Update Event"
  Then the event date of "Mochi Mingle" should be "2022-12-02"