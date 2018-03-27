Feature: Add movies to the database
 
  As a user
  So that I can quickly add movies 
  I want to see movies on index page 

Background: movies have been added to database

  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | The Incredibles         | PG     | 5-Nov-2004   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |

Scenario: add movies to the database
  

Scenario: add new movie
  When I go to the index page
  And  I follow "Add new movie"
  Then I should see "Create New Movie"
  
  Scenario: create new movie
  When I go to the Create New Movie
  And I fill in "Title" with "XYZ"
  And I press "Save Changes"
  Then I should be on the home page
  And I should see "'XYZ' was successfully created."
  

  Scenario: sort movies alphabetically
  Given I am on the index page
  When I follow "Movie Title"
  Then I should see "Chicken Run" before "Chocolat"
  

Scenario: change name of existing movie
  When I go to the edit page for "Chicken Run"
  And  I fill in "Title" with "ABC"
  And  I press "Update Movie Info"
  Then I should see "ABC was successfully updated."
   
  