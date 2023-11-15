class CourseEnrollment < ActiveRecord::Base
  # Your model associations and validations go here

  def self.add_enrollment(user, course, year, grade)
    create(
      user: user,
      course: course,
      year: year,
      grade: grade
    )
  end
end
