require 'bcrypt'

class User < ActiveRecord::Base
  has_secure_password  
  # has_many :course_enrollments
  self.primary_key = 'uid'
  has_many :course_enrollments, foreign_key: 'uid'
  has_many :courses, through: :course_enrollments


  def cosine_similarity(vec1, vec2)
    raise 'Vectors must be of same length' if vec1.size != vec2.size
    dot_product = vec1.zip(vec2).reduce(0) { |sum, (v1, v2)| sum + v1 * v2 }
    magnitude1 = Math.sqrt(vec1.reduce(0) { |sum, v| sum + v**2 })
    magnitude2 = Math.sqrt(vec2.reduce(0) { |sum, v| sum + v**2 })
    if magnitude1 == 0 || magnitude2 == 0
        0
    else
        dot_product / (magnitude1 * magnitude2)
    end
  end

  def recommend_courses(top_n_courses = 5)
    # Get all course IDs
    all_course_ids = Course.pluck(:id)
    
    # Vector representing the courses the current user is enrolled in
    my_course_ids = self.courses.pluck(:id)
    my_courses_vector = all_course_ids.map { |id| my_course_ids.include?(id) ? 1 : 0 }
    
    # Get all other users excluding the current user
    other_users = User.where.not(id: self.id)
    
    # Calculate the cosine similarity between the current user and all other users
    similarities = other_users.each_with_object({}) do |user, memo|
      other_user_courses_vector = all_course_ids.map { |id| user.courses.pluck(:id).include?(id) ? 1 : 0 }
      memo[user.id] = cosine_similarity(my_courses_vector, other_user_courses_vector)
    end
    
    # Sort the users by similarity and take the top 5
    top_users = similarities.sort_by { |_uid, similarity| -similarity }.map(&:first).first(5)
    
    # Get the top N recommended course IDs
    recommended_course_ids = CourseEnrollment
                            .where(uid: top_users)
                            .where.not(course_id: my_course_ids)
                            .group(:course_id)
                            .order('COUNT(uid) DESC')
                            .limit(top_n_courses)
                            .pluck(:course_id)

  
    # Calculate the average GPA for each recommended course based on the top 5 similar users' grades
    recommended_courses_with_gpa = recommended_course_ids.map do |course_id|
      enrollments = CourseEnrollment.where(course: course_id, user: top_users)
      total_gpa = enrollments.reduce(0) do |sum, enrollment|
        sum + grade_to_gpa(enrollment.grade)
      end
      average_gpa = enrollments.size > 0 ? total_gpa / enrollments.size : 0
      { course_id: course_id, average_gpa: average_gpa }
    end
  
    # Sort the recommended courses by their average GPA in descending order
    recommended_courses_sorted_by_gpa = recommended_courses_with_gpa.sort_by { |c| -c[:average_gpa] }
    
    # Return the courses with their calculated average GPA
    recommended_courses_sorted_by_gpa
  end
  
  private
  GRADE_TO_GPA = {
    "A+": 4.33,
    "A": 4.0,
    "A-": 3.7,
    "B+": 3.3,
    "B": 3.0,
    "B-": 2.7,
    "C+": 2.3,
    "C": 2.0,
    "C-": 1.7,
    "D+": 1.3,
    "D": 1.0
}
def grade_to_gpa(grade)
  # Ensure that grades are treated as strings and then converted to symbols
  GRADE_TO_GPA[grade.upcase.strip.to_sym] || 0
end
  
  
end
