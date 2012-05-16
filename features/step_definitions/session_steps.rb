
When /^I click "([^"]*)"$/ do |arg1|
  click_link "Sign up"
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  fill_in "Firstname", with: "Madonna"
  fill_in "Lastname", with: "Ciccone"
  fill_in "Email", with: "madonna@example.com"
  fill_in "Username", with: "madonnaciccone"
  fill_in "Password", with: "secret"
  fill_in "Password confirmation", with: "secret"
end

When /^I clink "([^"]*)"$/ do |arg1|
 click_link "Login"
end

When /^I am on the signin page$/ do
  visit new_session_path(resource_name)
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  fill_in "Email", with: "madonna@example.com"
  fill_in "Password", with: "secret"
end

Then /^I should see a notice of "([^"]*)"$/ do |arg1|
  page.should have_content("Signed in successfully.")
end



