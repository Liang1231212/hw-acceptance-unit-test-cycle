Feature: create movie
 
  As a user
  So that I delete a new movie to the list
  I want to destory a new movie
  
Background: movies in database
 
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |

 
Scenario: destory a new movie
  When I go to the home page
  And  I follow "More about Star Wars"
  And  I press "Delete"
  Then I should see "Movie 'Star Wars' deleted."
