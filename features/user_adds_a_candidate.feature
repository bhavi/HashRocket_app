Feature: User creates a candidate

  Scenario: validating data
    Given I am on the homepage
    And   I navigate to the candidates page
    And   I navigate to new candidate page
    When  I submit the candidate form
    Then  I see "Firstname can't be blank"
    And   I see "Lastname can't be blank"
    And   I see "Email can't be blank"
