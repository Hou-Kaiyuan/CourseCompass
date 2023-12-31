class CourseEnrollment < ActiveRecord::Base
  belongs_to :user, foreign_key: 'uid'
  belongs_to :course, foreign_key: 'course_id', primary_key: 'course_id'


  validates :course, presence: true
  validates :year, presence: true
  validates :grade, presence: true

end
