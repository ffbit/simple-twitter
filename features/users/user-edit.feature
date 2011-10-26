@edit-user
Feature: Edit user profile
  In order to change user's details
  As a user
  I want to be able change them
  
  Scenario: Clicking Edit profile link
    Given I have a user
    And I sign in
    And I'm on the user's page
    When I click "Edit profile" link
    Then I should see "Edit your details"

