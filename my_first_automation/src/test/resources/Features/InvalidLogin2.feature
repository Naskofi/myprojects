Feature: Login

  Scenario Outline: login with invalid credentials should be unsuccessful

    Given I navigate to login page
    When I enter in my "<username>"
    And I provide my "<password>"
    When I try to login
    Then I should see correct "<errorMessage>"

    Examples:
    | username              | password        | errorMessage                                                                                               |
    |nasiresman@yahoo.com   | August2024      | The account sign-in was incorrect or your account is disabled temporarily. Please wait and try again later.|
    |nasiressuman@yahoo.com | Augustt22024    | The account sign-in was incorrect or your account is disabled temporarily. Please wait and try again later.|
    |nasiressan@yahoo.com   | Augustt20024    | The account sign-in was incorrect or your account is disabled temporarily. Please wait and try again later.|