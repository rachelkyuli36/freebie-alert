Feature: Edit an event

  As a student user
  So that I can edit an event
  I want to be able to change the information of a posted event

Background: events have been added to database

  Given the following events exist:
  | title                        | rating  | event_date |
  | Waterbottles on Lerner Ramps | MERCH   | 2020-10-19 |
  | Mochi Mingle                 | FOOD    | 2022-11-20 |
  | Pojangmacha                  | FOOD    | 2022-11-03 |

Scenario: change event date of existing event
  When I go to the edit page for "Mochi Mingle"
  And I fill in "Event Date" with "2022-12-02"
  And I press "Update Event"
  Then the event date of "Mochi Mingle" should be "2022-12-02"