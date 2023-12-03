class Course < ActiveRecord::Base
    has_many :course_enrollments
    has_many :users, through: :course_enrollments
    validates :course_id, presence: true, uniqueness: true
    validates :course_title, presence: true
    validates :instructor, presence: true
  end
  