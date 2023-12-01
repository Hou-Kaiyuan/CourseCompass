class CourseEnrollment < ActiveRecord::Base
  belongs_to :user, foreign_key: 'user'
  belongs_to :course, foreign_key: 'course', primary_key: 'course_number'

  # Optionally, you can create a method to get the course number directly
  def course_number
    course.course_number
  end
end
