@tweet-deleting
@javascript
Feature: Tweet AJAX Deleting
  In order to delete some old tweets
  As a user
  I want to be able to delete tweets
  
  Background: One Tweet
    Given I'm signed in
    And I'm on the user's page
    When I fill in a "content" field with "A good tweet."
    And I click "Tweet" button
  
  Scenario: Delete Link
    Then I should see "Delete" link
  
  Scenario: Delete a Tweet
    When I click "Delete" link
    Then I should not see "A good tweet."
