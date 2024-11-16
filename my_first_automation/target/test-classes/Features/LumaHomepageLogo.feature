Feature: Home page

  Scenario: verify that luma logo is displayed on the luma app home page

    Given I have launched my browser
    When I enter the application url and hit enter on my keyboard
    Then Page should be fully loaded and i should see luma logo displayed
