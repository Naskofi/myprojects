Feature: Address book

  Scenario: User should be able to edit address details

    Given I am logged in to my account
    When I click on address book
    And I enter address details
    When I click save
    Then My address should be edited successful