# Given(/^I go to (.*) page/) do |page_name|
#   visit path_to(page_name)
# end

# Then(/^I should be on the (.*) page/) do |page_name|
#   expect(page).to have_current_path(path_to(page_name))
# end

# Then(/^I should see (.*)/) do |content|
#   expect(page).to have_content(content)
# end

Given(/^User not logged in$/) do
  visit '/logout'
end

# Given(/^User logged in$/) do
#   visit '/mock_login'
# end

# Given(/^User logged in as (\d+)$/) do |uid|
#   visit "/mock_login/#{uid}"
# end

# Given(/^User logged in with OAuth/) do
#   visit "/auth/google_oauth2/callback"
# end

# Then(/^I can see "([^"]*)" logged in$/) do |user_name|
#   step "I should see \"Welcome, #{user_name}\""
# end
