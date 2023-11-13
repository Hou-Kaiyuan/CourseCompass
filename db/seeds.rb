# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

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
  { :course_number => 'EECS E 4764',
    :course_title => 'IoT - Intelligent and Connected Systems',
    :offering_term => 'Fall 2023',
    :midterm => 1,
    :project => 1,
    :instructor => "Jiang, Fred",
    :website => "https://edblogs.columbia.edu/eecs4764-001-2018-3/",
    :days => "MW",
    :time => "4:10 PM - 5:25 PM"
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
  },
  { :course_number => 'COMS W 4775-001',
    :course_title => 'Causal Inference',
    :offering_term => 'Fall 2023',
    :midterm => 0, 
    :project => 1, 
    :instructor => "Bareinboim, Elias",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4775-20233-001/",
    :days => "MW",
    :time => "4:10 PM - 5:25 PM"
  },
  { :course_number => 'COMS E 6998-019',
    :course_title => 'Causal Trustworthy AI',
    :offering_term => 'Fall 2023',
    :midterm => 0, 
    :project => 1, 
    :instructor => "Bareinboim, Elias",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/E6998-20233-019/",
    :days => "Mo",
    :time => "6:10 PM - 8:00 PM"
  },
  { :course_number => 'COMS W 3107-001',
    :course_title => 'Clean Object-Oriented Design',
    :offering_term => 'Fall 2023',
    :midterm => 0, 
    :project => 1, 
    :instructor => "Kender, John R",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W3107-20233-001/",
    :days => "MW",
    :time => "4:10 PM - 5:25 PM"
  },
  { :course_number => 'COMS E 6998-010',
    :course_title => 'Cloud Computing & Big Data',
    :offering_term => 'Fall 2023',
    :midterm => 0, 
    :project => 1, 
    :instructor => "Sahu, Sambit",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/E6998-20233-010/",
    :days => "Mo",
    :time => "6:10 PM - 8:00 PM"
  },
  { :course_number => 'COMS W 4995-005',
    :course_title => 'Competitive Programming',
    :offering_term => 'Fall 2023',
    :midterm => 0, 
    :project => 1, 
    :instructor => "Lim, Yongwhan",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4995-20233-005/",
    :days => "Mo",
    :time => "7:00 PM - 9:30 PM"
  },
  { :course_number => 'COMS W 4165-001',
    :course_title => 'Computational Techniques In Pixel Processing',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Wolberg, George",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4165-20233-001/",
    :days => "TR",
    :time => "8:40 AM - 9:55 AM"
  },
  { :course_number => 'CSEE W 4824-001',
    :course_title => 'Computer Architecture',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Sethumadhavan, Simha",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/CSEE/W4824-20233-001/",
    :days => "MW",
    :time => "10:10 AM - 11:25 AM"
  },
  { :course_number => 'COMS W 3261-001',
    :course_title => 'Computer Science Theory',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Pitassi, Toniann",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W3261-20233-001/",
    :days => "MW",
    :time => "8:40 AM - 9:55 AM"
  },
  { :course_number => 'COMS W 3261-002',
    :course_title => 'Computer Science Theory',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Pitassi, Toniann",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W3261-20233-002/",
    :days => "MW",
    :time => "10:10 AM - 11:25 AM"
  },
  { :course_number => 'COMS W 4731-001',
    :course_title => 'Computer Vision I: First Principles',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Nayar, Shree K",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4731-20233-001/",
    :days => "MW",
    :time => "10:10 AM - 11:25 AM"
  },
  { :course_number => 'COMS W 3410-001',
    :course_title => 'Computers and Society',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Baecker, Ronald",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W3410-20233-001/",
    :days => "Tu",
    :time => "5:30 PM - 8:00 PM"
  },
  { :course_number => 'COMS W 1002-001',
    :course_title => 'Computing in Context',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Cannon, Adam H",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W1002-20233-001/",
    :days => "TR",
    :time => "2:40 PM - 3:55 PM"
  },
  { :course_number => 'COMS W 3134-001',
    :course_title => 'Data Structures in Java',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Borowski, Brian S.",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W3134-20233-001/",
    :days => "MW",
    :time => "4:10 PM - 5:25 PM"
  },
  { :course_number => 'COMS W 3203-001',
    :course_title => 'Discrete Mathematics: Introduction To Combinatorics and Graph Theory',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Dear, Tony",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W3203-20233-001/",
    :days => "MW",
    :time => "2:40 PM - 3:55 PM"
  },
  { :course_number => 'COMS W 4995-009',
    :course_title => 'Data-driven Design for Social Innovation',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Verma, Nakul",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4995-20233-009/",
    :days => "Fr",
    :time => "1:10 PM - 3:40 PM"
  },
  { :course_number => 'COMS W 4995-011',
    :course_title => 'Deep Learning for Computer Vision',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Belhumeur, Peter N",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4995-20233-011/",
    :days => "TR",
    :time => "2:40 PM - 3:55 PM"
  },
  { :course_number => 'COMS W 4995-030',
    :course_title => 'Elements of Data Science',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Cupallari, Andi",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4995-20233-030/",
    :days => "Mo",
    :time => "7:00 PM - 9:30 PM"
  },
  { :course_number => 'COMS W 1404-001',
    :course_title => 'Emerging Scholars Program Seminar',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Cannon, Adam H",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W1404-20233-001/",
    :days => "Fr",
    :time => "8:40 AM - 9:55 AM"
  },
  { :course_number => 'COMS E 6998-004',
    :course_title => 'Engineering Web3 Blockchain Applications',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Yang, Junfeng",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/E6998-20233-004/",
    :days => "Tu",
    :time => "10:10 AM - 12:00 PM"
  },
  { :course_number => 'COMS W 3136-001',
    :course_title => 'Essential Data Structures in C/C++',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Paine, Timothy",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W3136-20233-001/",
    :days => "TR",
    :time => "5:40 PM - 6:55 PM"
  },
  { :course_number => 'COMS E 6998-016',
    :course_title => 'Formal Verification Systems',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Gu, Ronghui",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/E6998-20233-016/",
    :days => "Th",
    :time => "2:10 PM - 4:00 PM"
  },
  { :course_number => 'COMS E 6998-022',
    :course_title => 'Foundations of Data Privacy',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Cummings, Rachel",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/E6998-20233-022/",
    :days => "Fr",
    :time => "10:10 AM - 12:40 PM"
  },
  { :course_number => 'COMS E 6998-009',
    :course_title => 'Fundamentals of Speech Recognition',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Beigi, Homayoon",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/E6998-20233-009/",
    :days => "Th",
    :time => "7:00 PM - 9:30 PM"
  },
  { :course_number => 'CSEE W 3827-001',
    :course_title => 'Fundamentals of Computer Systems',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Kim, Martha A",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/CSEE/W3827-20233-001/",
    :days => "TR",
    :time => "11:40 AM - 12:55 PM"
  },
  { :course_number => 'CSEE W 3827-002',
    :course_title => 'Fundamentals of Computer Systems',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Kim, Martha A",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/CSEE/W3827-20233-002/",
    :days => "TR",
    :time => "1:10 PM - 2:25 PM"
  },
  { :course_number => 'COMS W 4113-001',
    :course_title => 'Fundamentals of Large-Scale Distributed Systems',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Geambasu, Roxana",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4113-20233-001/",
    :days => "Fr",
    :time => "10:10 AM - 12:40 PM"
  },
  { :course_number => 'COMS W 4995-008',
    :course_title => 'Hacking 4 Defense',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Cahill, Jason",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4995-20233-008/",
    :days => "Tu",
    :time => "4:10 PM - 6:40 PM"
  },
  { :course_number => 'COMS E 6998-023',
    :course_title => 'Internet Measurement',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Katz-Bassett, Ethan",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/E6998-20233-023/",
    :days => "We",
    :time => "4:10 PM - 6:40 PM"
  },
  { :course_number => 'COMS E 6998-021',
    :course_title => 'Introduction to Property Testing',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Chen, Xi",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/E6998-20233-021/",
    :days => "Fr",
    :time => "2:10 PM - 4:00 PM"
  },
  { :course_number => 'ENGI E 1006-001',
    :course_title => 'Introduction to Computing for Engineers and Applied Scientists',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Bauer, Daniel",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/ENGI/E1006-20233-001/",
    :days => "MW",
    :time => "10:10 AM - 11:25 AM"
  },
  { :course_number => 'COMS W 4236-001',
    :course_title => 'Introduction to Computational Complexity',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Yuen, Henry",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4236-20233-001/",
    :days => "MW",
    :time => "1:10 PM - 2:25 PM"
  },
  { :course_number => 'COMS W 4252-001',
    :course_title => 'Introduction to Computational Learning Theory',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Servedio, Rocco A.",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4252-20233-001/",
    :days => "MW",
    :time => "8:40 AM - 9:55 AM"
  },
  { :course_number => 'COMS W 1004-001',
    :course_title => 'Introduction to Computer Science and Programming in Java',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Blaer, Paul S",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W1004-20233-001/",
    :days => "MW",
    :time => "2:40 PM - 3:55 PM"
  },
  { :course_number => 'COMS W 4261-001',
    :course_title => 'Introduction to Cryptography',
    :offering_term => 'Fall 2023',
    :midterm => 0,
    :project => 1,
    :instructor => "Malkin, Tal G",
    :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4261-20233-001/",
    :days => "TR",
    :time => "10:10 AM - 11:25 AM"
  }
]

courses.each do |course|
  Course.create!(course)
end

num_users_to_create = 100
starting_uid = 1

num_users_to_create.times do
  uid = starting_uid.to_s
  email = "test#{uid}@columbia.edu"

  while User.exists?(uid: uid)
    starting_uid += 1
    uid = starting_uid.to_s
    email = "test#{uid}@columbia.edu"
  end

  user = {
    provider: "google_oauth2",
    uid: uid,
    oauth_token: "0",
    oauth_expires_at: 9999999999,
    email: email,
    major: Faker::Educator.subject,
    first_name: "Test",
    last_name: "User#{uid}",
    profile_pic: "https://static.vecteezy.com/system/resources/previews/002/318/271/non_2x/user-profile-icon-free-vector.jpg",
    password: uid,
    password_confirmation: uid
  }
    User.create!(user)

    starting_uid += 1
  end
 

grades = ['A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'D+', 'D']
probabilities = [0.02, 0.08, 0.1, 0.2, 0.3, 0.1, 0.05, 0.05, 0.05, 0.025, 0.025]

def weighted_sample(values, weights)
  total_weight = weights.sum
  threshold = rand * total_weight
  values.zip(weights).each do |value, weight|
    threshold -= weight
    return value if threshold <= 0
  end
end
num_users_to_create.times do
  user = User.order(Arel.sql("RANDOM()")).first 
  year = [2022, 2023].sample                 

  num_courses = rand(4..20)

  courses_to_take = courses.sample(num_courses)

  courses_to_take.each do |course|
    if CourseEnrollment.find_by(user: user[:uid], course: course[:course_number]).nil?
      if num_courses > 10
        adjusted_probabilities = probabilities.map { |p| p * 0.5 }
        adjusted_probabilities[0] = 0.1 
        adjusted_probabilities[1] = 0.2 
        grade = weighted_sample(grades, adjusted_probabilities)
      else
        grade = weighted_sample(grades, probabilities)
      end

      enrollment = {
        user: user[:uid], 
        course: course[:course_number], 
        year: year,
        grade: grade
      }
      CourseEnrollment.create!(enrollment)
    end
  end
end

