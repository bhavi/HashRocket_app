When /^I navigate to new candidate page$/ do
  click_link "New Candidate"
end

When /^I submit the candidate form$/ do
  click_button "Create Candidate"
end

Given /^I fill the candidate form with valid information$/ do
  fill_in "Firstname", with: "Madonna"
  fill_in "Lastname", with: "Ciccone"
  fill_in "Email", with: "madonna@example.com"
  fill_in "Phone", with: "90112312334"
  fill_in "Github", with: "madonna"
  fill_in "Twitter", with: "madonnaoficial"
  choose "Yes"
  select "Pending", from: "Status"
end

Then /^I am on the candidates page$/ do
  current_path.should == candidates_path
end

Then /^I see the following table:$/ do |expected_table|
  rows = all(:xpath, "//table//tr")
  result = []
  rows.each do |tr|
    columns = tr.all(:xpath, ".//td|th").map(&:text)
    result << columns
  end
  expected_table.diff!(result)
end
