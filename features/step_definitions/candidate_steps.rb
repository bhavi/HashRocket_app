Given /^I am on the homepage$/ do
  visit root_path
end

When /^I navigate to new candidate page$/ do
  click_link "New Candidate"
end

Given /^I navigate to the candidates page$/ do
  click_link "Candidates"
end


When /^I submit the candidate form$/ do
  click_button "Create Candidate"
end

Then /^I see "([^"]*)"$/ do |text|
  page.should have_content(text)
end
