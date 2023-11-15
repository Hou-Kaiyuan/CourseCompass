Given /database is seeded/ do
  expect(@database_seeded).to be_truthy
end


Then /(.*) courses should exist/ do |n_seeds|
  expect(Course.count).to eq n_seeds.to_i
end

Then /(.*) users should exist/ do |n_seeds|
  expect(User.count).to eq n_seeds.to_i
end



Given(/^I should be on the CourseCompass home page$/) do
  expect(current_path).to eq('/courses') 
end

Then(/^(\d+) courses should be displayed$/) do |number_of_courses|
  expect(page).to have_css('.course', count: number_of_courses.to_i) 
end


Then /^(\d+) courses should be display$/ do |n_items|
  rows = page.all('#courses tr') 
  expect(rows.size).to eq n_items.to_i+1
end

