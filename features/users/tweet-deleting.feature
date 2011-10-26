@tweet-deleting
Feature: Tweet AJAX Deleting
  In order to delete some old tweets
  As a user
  I want to be able to delete tweets
  
  Scenario: Delete Link
    Given I'm signed in
    And I've got 1 tweet
    And I'm on the user's page
    Then I should see "Delete" link

