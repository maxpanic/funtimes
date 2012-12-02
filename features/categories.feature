Feature: Allow viewing of categories, both creating and editing them

As a administrator
In order to categorize things and view them
I want to provide categories for the articles

Background:
Given the blog is set up
And the following categories exist:
| name | description | id |
| cat1 | this is cat1 | 2 |
And I am logged into the admin panel

Scenario: View new page for categories
Given I am on the new article page
When I follow "Categories"
Then I should see "Your category slug. Leave empty if you don't know what to put here"

Scenario: View edit page for categories
Given I am on the new article page
When I follow "Categories"
And I click the edit link for the category named "cat1"
Then I should see "Your category slug. Leave empty if you don't know what to put here"
And the "category_name" field should contain "cat1"
