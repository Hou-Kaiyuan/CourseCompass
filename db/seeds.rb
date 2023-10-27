# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

courses = [
	{ :name => 'COMS4152',
    :description => 'desp',
    :offering_term => 2; # 0: fall, 1: spring, 2: both
    :midterm  => 0, # 0: no midterm, 1: midterm
    :project => 1, # 0: no project, 1: project
    :instructor => "Junfeng Yang",
    :website => "https://www.cs.columbia.edu/~junfeng/23fa-w4152/index.html"
  },
  {}

]

courses.each do |course|
  Course.create!(course)
end


users = [
  {
    :provider => "google_oauth2",
    :uid => "1",
    :oauth_token => "0",
    :oauth_expires_at => 9999999999,
    :email => "test1@columbia.edu",
    :major => "Computer Science",
    :first_name => "Test",
    :last_name => "User1",
    :profile_pic => "https://static.vecteezy.com/system/resources/previews/002/318/271/non_2x/user-profile-icon-free-vector.jpg"
  },
  {
    :provider => "google_oauth2",
    :uid => "2",
    :oauth_token => "0",
    :oauth_expires_at => 9999999999,
    :email => "test2@columbia.edu",
    :major => "Computer Science",
    :first_name => "Test",
    :last_name => "User2",
    :profile_pic => "https://static.vecteezy.com/system/resources/previews/002/318/271/non_2x/user-profile-icon-free-vector.jpg"
  },
  {
    :provider => "google_oauth2",
    :uid => "3",
    :oauth_token => "0",
    :oauth_expires_at => 9999999999,
    :email => "test3@columbia.edu",
    :major => "Economics",
    :first_name => "Test",
    :last_name => "User3",
    :profile_pic => "https://static.vecteezy.com/system/resources/previews/002/318/271/non_2x/user-profile-icon-free-vector.jpg"
  },
  {
    :provider => "google_oauth2",
    :uid => "4",
    :oauth_token => "0",
    :oauth_expires_at => 9999999999,
    :email => "test4@columbia.edu",
    :major => "Electrical Engineering",
    :first_name => "Test",
    :last_name => "User4",
    :profile_pic => "https://static.vecteezy.com/system/resources/previews/002/318/271/non_2x/user-profile-icon-free-vector.jpg"
  }
]

users.each do |user|
  User.create!(user)
end