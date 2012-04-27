Feature: User creates a candidate

  Background:
    Given I am on the homepage
    And   I navigate to the candidates page
    And   I navigate to new candidate page

  Scenario: adding new candidate successfully
    Given it is currently '2012-02-01'
    And   I fill the candidate form with valid information
    When  I submit the candidate form
    Then  I see "Candidate was successfully created"
    And   I am on the candidates page
    And   I see the following table:
      | Name            | Phone       | Email               | Twitter        | Github  | Local | Willing To Relocate | Added On   | Status  | Resume                       |
      | Ciccone Madonna | 90112312334 | madonna@example.com | madonnaoficial | madonna | No    | Yes                 | 2012-02-01 | Pending | Click here to see the resume |

  Scenario: validating data
    Given I submit the candidate form
    Then  I see "Firstname can't be blank"
    And   I see "Lastname can't be blank"
    And   I see "Email can't be blank"

  Scenario: adding new candidate with resume
