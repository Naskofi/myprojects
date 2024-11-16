Feature: Create Account

  Background:
    Given I am on the create account page

  Scenario: User should be able to create

    #Given I navigate to login screen
    And I enter all mandatory information
    When I select the register button
    Then My account should be created successfully
