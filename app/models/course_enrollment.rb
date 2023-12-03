class CourseEnrollment < ActiveRecord::Base
  belongs_to :user, foreign_key: 'user'
  belongs_to :course, foreign_key: 'course', primary_key: 'course_number'

  # Add validations for the presence of the course, year, and grade
  validates :course, presence: true
  validates :year, presence: true, numericality: { only_integer: true, greater_than: 1900 }
  validates :grade, presence: true

  # Optionally, you can create a method to get the course number directly
  def course_number
    course.course_number
  end
end
