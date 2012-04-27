Given /^I am on the homepage$/ do
  visit root_path
end

Given /^I navigate to the candidates page$/ do
  click_link "Candidates"
end
