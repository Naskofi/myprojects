Feature: Login

  Scenario: Users with valid credentials should be able to login

    Given I am on the homepage
    When I click sign in
    And I see the username and password fields
    When I enter the correct username
    And I enter the correct password
    When I click login button
    Then I should be logged in successfully