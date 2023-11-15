Given(/^the following users exist/) do |users_table|
  users_table.hashes.each do |user|
    User.create(user)
  end
end

Then(/^(?:|I )should land on the user page for (.+)$/) do |email|
  user = User.find_by(email: email)
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == user_path(user.id)
  else
    assert_equal user_path(user.id), current_path
  end
end

Given(/^User not logged in$/) do
  visit '/logout'
end