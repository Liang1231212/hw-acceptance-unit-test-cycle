Feature: create movie
 
  As a user
  So that I add a new movie to the list
  I want to create a new movie
 
 
Scenario: create a new movie
  When I go to the home page
  And  I follow "Add new movie"
  And  I fill in "Title" with "Movie A"
  And  I select "G" from "Rating"
  And  I select "2018" from "movie_release_date_1i"
  And  I select "March" from "movie_release_date_2i"
  And  I select "20" from "movie_release_date_3i"
  And I press "Save Change"
  Then I should see "Movie A was successfully created."
