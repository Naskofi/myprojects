Feature: Forgotten Password

  Scenario: Verify that reset password sent to valid email is displayed on the customer login page.

    Given I am on the luma homepage
    When I click sign in button
    And I see forgotten your password
    When I click forgotten your password
    And I see the username field
    When I enter the correct email
    And I click reset my password button
    Then Password should be reset and I should a successful reset message displayed