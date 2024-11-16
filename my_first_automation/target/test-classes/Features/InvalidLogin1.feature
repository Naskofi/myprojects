Feature: Login

  Scenario: Users with valid credentials should be able to login

    Given I get on the login page
    When I type the wrong username
    And I type the correct password
    When I select the login button
    Then The login should fail