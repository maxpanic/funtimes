Feature: Merge Articles
  As an administrator
  In order to prevent similar articles to flood a blog
  I want to merge articles

  Background:
    Given the blog is set up
    And the following articles exist:
      | title  | author | body        | published | id |
      | first  | dennis | Lorem Ipsum | t         | 1  |
      | second | eric   | Muspi Merol | u         | 2  |
    And I am logged into the admin panel
    And I follow "All Articles"
    And I follow "first"
    And I fill in "merge_with" with "2"
    And I press "Merge"

Scenario: Merged article should contain text of both previous articles
  Given I am on the new article page
  When I follow "All Articles"
  Then I should see "first"
  And I should not see "second"
  When I follow "first"
  Then I should see "Lorem Ipsum"

Scenario: Merged article should have one author
  Given I am on the new article page
  When I follow "All Articles"
  Then I should see "dennis"
  And I should not see "eric"

Scenario: Comments from previous articles should carry over to merged article

Scenario: Title of merged article should be title from a previous article
  Given I am on the new article page
  When I follow "All Articles"
  Then I should see "first"
  And I should not see "second"