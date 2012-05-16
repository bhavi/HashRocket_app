Feature: User adds a skill

Scenario:Given I am on the homepage
         And   I navigate to skills page
         And   I navigate to new skill page
         And   I fill the form with information
         When  I submit the form
         Then  I see "Skill was successfully created."
         And   I am on skills page
         And   I see the following skills table:
               | Name            |      
               | Ruby on Rails   | 

Scenario:  validating skill
         Given I am on the homepage
         And   I navigate to skills page
         And   I navigate to new skill page 
         When  I submit the form 
         Then  I see "Name can't be blank"  
