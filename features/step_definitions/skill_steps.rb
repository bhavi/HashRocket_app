Then /^I navigate to skills page$/ do
  visit skills_path
end

Then /^I navigate to new skill page$/ do
  click_link 'New Skill'
end

Then /^I fill the form with information$/ do
  fill_in "Name", with: "Ruby on Rails"
end

When /^I submit the form$/ do
 click_button "Create Skill"
end

Then /^I am on skills page$/ do
 current_path.should == skills_path
end

Then /^I see the following skills table:$/ do |table|
  rows = all(:xpath, "//table//tr")
  result = []
  rows.each do |tr|
    columns = tr.all(:xpath, ".//td|th").map(&:text)
    result << columns
  end
end

