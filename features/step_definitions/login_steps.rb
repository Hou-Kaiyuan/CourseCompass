Given(/^the following users exist/) do |users_table|
  users_table.hashes.each do |user|
    User.create(user)
  end
end

Given(/^a valid user$/) do
  @user = User.create!({
             :email => "test@columbia.edu",
             :password => "1234",
             :password_confirmation => "1234"
           })
end