Feature: User signs in

Scenario:
    Given I am signed in as "abc@example.com"
    Then I should see "Welcome, abc@example.com"
