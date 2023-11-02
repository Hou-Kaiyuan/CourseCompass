# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

courses = [
	{ :course_number => 'COMS W 4152',
    :course_title => 'Engineering Software-as-a-Service',
    :offering_term => 'Fall 2023',# 0: fall, 1: spring, 2: both
    :midterm  => 0, # 0: no midterm, 1: midterm
    :project => 1, # 0: no project, 1: project
    :instructor => "Junfeng Yang",
    :time => "8:40 PM - 9:55 PM",
    :days => "TR",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4152-20233-001/"
  },
  { :course_number => 'COMS E 6998-024',
    :course_title => 'Adv Computer Networks',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Katz-Bassett, Ethan",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/E6998-20233-024/",
    :days => "TR",
    :time => "2:40 PM - 3:55 PM"
  },
  { :course_number => 'COMS W 4995-014',
    :course_title => 'Adv Mach Lrng Health &med',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Joshi, Shalmali",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4995-20233-014/",
    :days => "Fr",
    :time => "2:00 PM - 4:00 PM"
  },
  { :course_number => 'COMS E 6998-012',
    :course_title => 'Adv Web Design Studio',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Chilton, Lydia B",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/E6998-20233-012/",
    :days => "Fr",
    :time => "12:10 PM - 2:00 PM"
  },
  { :course_number => 'COMS W 3157-001',
    :course_title => 'Advanced Programming',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Lee, Jae Woo",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W3157-20233-001/",
    :days => "TR",
    :time => "2:40 PM - 3:55 PM"
  },
  { :course_number => 'COMS W 3157-002',
    :course_title => 'Advanced Programming',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Lee, Jae Woo",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W3157-20233-002/",
    :days => "TR",
    :time => "5:40 PM - 6:55 PM"
  },
  { :course_number => 'COMS E 6998-020',
    :course_title => 'Agile & Iterative Dev',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Ricci, Jason",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/E6998-20233-020/",
    :days => "MW",
    :time => "4:10 PM - 5:25 PM"
  },
  { :course_number => 'COMS W 3157-004',
    :course_title => 'Advanced Programming',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Lee, Jae Woo",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W3157-20233-004/",
    :days => "TR",
    :time => "8:10 AM - 9:25 AM"
  },
  { :course_number => 'COMS W 4735-001',
    :course_title => 'Computational Aspects of Robotics',
    :offering_term => 'Fall 2023',
    :midterm => 1,
    :project => 1,
    :instructor => "Allen, Peter K",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4735-20233-001/",
    :days => "TR",
    :time => "11:40 AM - 12:55 PM"
  },
  { :course_number => 'COMS W 4118-001',
    :course_title => 'Operating Systems I',
    :offering_term => 'Fall 2023',
    :midterm => 1,
    :project => 1,
    :instructor => "Bellovin, Steven M",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4118-20233-001/",
    :days => "TR",
    :time => "1:10 PM - 2:25 PM"
  },
  { :course_number => 'COMS W 4160-001',
    :course_title => 'Computer Graphics',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Raskar, Ramesh",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4160-20233-001/",
    :days => "TR",
    :time => "10:10 AM - 11:25 AM"
  },
  { :course_number => 'COMS W 4156-001',
    :course_title => 'Advanced Software Engineering',
    :offering_term => 'Fall 2023',
    :midterm => 1,
    :project => 1,
    :instructor => "Kaiser, Gail E",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4156-20233-001/",
    :days => "MW",
    :time => "10:10 AM - 11:25 AM"
  },
  { :course_number => 'COMS W 3261-001',
    :course_title => 'Computer Science Theory',
    :offering_term => 'Fall 2023',
    :midterm => 1,
    :project => 0,
    :instructor => "Yannakakis, Mihalis",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W3261-20233-001/",
    :days => "TR",
    :time => "1:10 PM - 2:25 PM"
  },
  { :course_number => 'COMS W 1004-003',
    :course_title => 'Introduction to Computer Science and Programming in Java',
    :offering_term => 'Fall 2023',
    :midterm => 1,
    :project => 1,
    :instructor => "Cannistraci, Christopher J",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W1004-20233-003/",
    :days => "TR",
    :time => "4:10 PM - 5:25 PM"
  },
  { :course_number => 'COMS W 1007-001',
    :course_title => 'Honors Introduction to Computer Science',
    :offering_term => 'Fall 2023',
    :midterm => 1,
    :project => 1,
    :instructor => "Edwards, Stephen A",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W1007-20233-001/",
    :days => "TR",
    :time => "11:40 AM - 12:55 PM"
  },
  { :course_number => 'COMS W 4170-001',
    :course_title => 'User Interface Design',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Norman, Donald",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4170-20233-001/",
    :days => "MW",
    :time => "2:40 PM - 3:55 PM"
  }


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
  },
  {
    :provider => "google_oauth2",
    :uid => "5",
    :oauth_token => "0",
    :oauth_expires_at => 9999999999,
    :email => "test5@columbia.edu",
    :major => "Mechanical Engineering",
    :first_name => "Test",
    :last_name => "User5",
    :profile_pic => "https://static.vecteezy.com/system/resources/previews/002/318/271/non_2x/user-profile-icon-free-vector.jpg"
  },
  {
    :provider => "google_oauth2",
    :uid => "6",
    :oauth_token => "0",
    :oauth_expires_at => 9999999999,
    :email => "test6@columbia.edu",
    :major => "Physics",
    :first_name => "Test",
    :last_name => "User6",
    :profile_pic => "https://static.vecteezy.com/system/resources/previews/002/318/271/non_2x/user-profile-icon-free-vector.jpg"
  },
  {
    :provider => "google_oauth2",
    :uid => "7",
    :oauth_token => "0",
    :oauth_expires_at => 9999999999,
    :email => "test7@columbia.edu",
    :major => "Mathematics",
    :first_name => "Test",
    :last_name => "User7",
    :profile_pic => "https://static.vecteezy.com/system/resources/previews/002/318/271/non_2x/user-profile-icon-free-vector.jpg"
  },
  {
    :provider => "google_oauth2",
    :uid => "8",
    :oauth_token => "0",
    :oauth_expires_at => 9999999999,
    :email => "test8@columbia.edu",
    :major => "Biology",
    :first_name => "Test",
    :last_name => "User8",
    :profile_pic => "https://static.vecteezy.com/system/resources/previews/002/318/271/non_2x/user-profile-icon-free-vector.jpg"
  },
  {
    :provider => "google_oauth2",
    :uid => "9",
    :oauth_token => "0",
    :oauth_expires_at => 9999999999,
    :email => "test9@columbia.edu",
    :major => "Chemistry",
    :first_name => "Test",
    :last_name => "User9",
    :profile_pic => "https://static.vecteezy.com/system/resources/previews/002/318/271/non_2x/user-profile-icon-free-vector.jpg"
  },
  {
    :provider => "google_oauth2",
    :uid => "10",
    :oauth_token => "0",
    :oauth_expires_at => 9999999999,
    :email => "test10@columbia.edu",
    :major => "Political Science",
    :first_name => "Test",
    :last_name => "User10",
    :profile_pic => "https://static.vecteezy.com/system/resources/previews/002/318/271/non_2x/user-profile-icon-free-vector.jpg"
  }
]

users.each do |user|
  User.create!(user)
end