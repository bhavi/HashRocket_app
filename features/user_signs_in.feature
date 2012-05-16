Feature: In order to manage my applicants
As a registered user
I want to sign into my account

Background:
Given I am on the homepage

Scenario: Successful signin
When I clink "Login"
And  I fill in "Email" with "madonna@example.com"
And  I fill in "Password" with "secret"
And  I press "Sign in"
Then I should see a notice of "Signed in successfully ."

