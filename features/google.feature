Feature: Google Search

  Scenario: Searching for a common phrase
    When I search for a common phrase
    Then every result title should include the word i searched for