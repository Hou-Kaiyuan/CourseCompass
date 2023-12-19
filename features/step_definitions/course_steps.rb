Given /database is seeded/ do
  expect(@database_seeded).to be_truthy
end

Given(/^I am logged in$/) do
  visit login_path
  fill_in 'Email', with: 'test2@columbia.edu'
  fill_in 'Password', with: '2'
  click_button 'Log In'
end

Then /(.*) courses should exist/ do |n_seeds|
  expect(Course.count).to eq n_seeds.to_i
end

Then /(.*) users should exist/ do |n_seeds|
  expect(User.count).to eq n_seeds.to_i
end

Then /^(\d+) courses should be displayed$/ do |expected_count|
  rows = page.all('table tbody tr')
  expect(rows.size).to eq expected_count.to_i
end

When /^I fill in course with "([^"]*)", year with "([^"]*)" and grade with "([^"]*)"$/ do |course, year, grade|
  fill_in 'course_enrollment[course_id]', with: course
  fill_in 'course_enrollment[year]', with: year
  fill_in 'course_enrollment[grade]', with: grade
end

When(/^I select option "(.*?)" from element "(.*?)"$/) do |option, selector|
  all(selector).last.find(:option, option).select_option
end



