Feature: Delete movies from the database
 
  As a user
  So that I can delete movies 
  I want to see updated movies on index page 
  
Background: movies in database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |
  
Scenario: delete movie
  When I go to the details page for "Star Wars"
  And I press "Delete"
  Then I should be on the home page
  And I should see "Movie 'Star Wars' deleted."
  And I should not see "Star Wars"
  
