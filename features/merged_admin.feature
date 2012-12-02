Feature: User Permissions
  As a user
  In order to prevent malicious users from having too much access
  I want to limit permissions

  Background:
     Given the blog is set up with a non-admin
     And I am logged into the non-admin panel
     And the following articles exist:
       | title  | author | body        | published | id |
       | first  | dennis | Lorem Ipsum | t         | 1  |
       | second | eric   | Muspi Merol | u         | 2  |
Scenario: A non-administrator cannot merge articles
  Given I am on the new article page
  When I follow "All Articles"
  Then I should see "first"
  And I follow "first"
  And I should not see "Merge"