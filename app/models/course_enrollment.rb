class CourseEnrollment < ActiveRecord::Base
  # belongs_to :user, foreign_key: 'uid'
  # belongs_to :course, foreign_key: 'course_id'
  belongs_to :user, foreign_key: 'uid'
  belongs_to :course, foreign_key: 'course_id', primary_key: 'course_id'


  validates :course, presence: true
  validates :year, presence: true
  validates :grade, presence: true

  # Optionally, you can create a method to get the course number directly
  def course_id
    course.course_id
  end
end
