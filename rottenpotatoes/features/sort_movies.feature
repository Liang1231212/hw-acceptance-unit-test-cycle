Feature: sort movies
 
  As a user
  So that I can look at the movie list in a certain order
  I want to sort the movie list
 
Background: movies in database
 
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |
 
Scenario: sort movies by movie title
  When I am on the home page
  And  I follow "Movie Title"
  Then I should see "Alien" before "Blade Runner"
  And I should see "Blade Runner" before "Star Wars"
  And I should see "Star Wars" before "THX-1138"

 
Scenario: sort movies by released date
  When I am on the home page
  And  I follow "Release Date"
  Then I should see "THX-1138" before "Star Wars"
  And I should see "Star Wars" before "Alien"
  And I should see "Alien" before "Blade Runner"
