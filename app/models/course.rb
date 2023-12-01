class Course < ActiveRecord::Base
    has_many :course_enrollments
    has_many :users, through: :course_enrollments
  end
  