Feature: In order to manage my applicants
  As a guest on the front page
  I want to create an account

  Background:
    Given I am on the homepage

  Scenario: User can sign up with a new account
    When I click "Sign up"
    When I fill in "Firstname" with "Madonna"
    And  I fill in "Lastname" with "Ciccone"
    And  I fill in "Email" with "madonna@example.com"
    And  I fill in "Username" with "madonnaciccone"
    And  I fill in "Password" with "secret"
    And  I fill in "Password confirmation" with "secret"
    And  I click "Sign Up"
    Then I am on the homepage
    


