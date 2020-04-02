Feature: Demo test for the native mobile Android application
  Scenario: Test Example
    Given I am logged into the app as the unregistered user
    When I navigate to the search screen
    And Search for some wine by using specified filters
    Then Assert that expected result is found
