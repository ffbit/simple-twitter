@tweet-pagination
Feature: Tweet Pagination
  In order save space on user's page
  As a user
  I want to be able to paginate tweets
  
  Background: 50 tweets
    Given I'm signed in
    And I've got 50 tweets
    And I'm on the user's page

  Scenario: Initial displayed list of tweets
    Then I should see 10 tweets
    And I should see "More" button
  
  @javascript
  Scenario: One more page of tweets
    When I click "More" button
    Then I should see 20 tweets
  
  @javascript
  Scenario: All pages of tweets
    When I click "More" button 4 times
    Then I should not see "More" button

