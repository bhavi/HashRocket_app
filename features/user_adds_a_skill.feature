Feature: User adds a skill

Scenario:Given I am on the homepage
         And   I navigate to skills page
         And   I navigate to new skill page
         And   I fill the form with valid information
         When  I submit the form
         Then  I see "Skill Added Successfully"
         And   I am on skills page
