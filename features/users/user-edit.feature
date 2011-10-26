@edit-user
Feature: Edit user profile
  In order to change user's details
  As a user
  I want to be able change them
  
  Background: Visit Edit Profile Link
    Given I have a user
    And I sign in
    And I'm on the user's page
    When I click "Edit profile" link
  
  Scenario: Clicking Edit profile link
    Then I should see "Edit your details"
    
  Scenario: Edit User's profile
    And I fill in a "password" field with "new password"
    And I fill in a "password confirmation" field with "new password"
    And I fill in a "current password" field with "secret"
    And I click a "Update" button
    Then I should see "You updated your account successfully."

