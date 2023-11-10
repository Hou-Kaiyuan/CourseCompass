class User < ActiveRecord::Base
    has_many :course_enrollments
    has_many :courses, through: :course_enrollments

    def self.from_omniauth(auth)
        User.find_or_create_by!(uid: auth[:uid]) do |u|
          u.provider = auth[:provider]
          u.uid = auth[:uid]
          u.oauth_token = auth[:credentials][:token]
          u.oauth_expires_at = Time.at(auth[:credentials][:expires_at])
          u.email = auth[:info][:email]
          u.major = auth[:info][:major]
          u.first_name = auth[:info][:first_name]
          u.last_name = auth[:info][:last_name]
          u.profile_pic = auth[:info][:image]
        end
    end

    def self.get_user_info(uid)
        user = User.where(uid: uid).first
        if user.nil?
          nil
        else
          {
            :uid => user[:uid],
            :email => user[:email],
            :first_name => user[:first_name],
            :last_name => user[:last_name],
            :department => user[:department],
            :profile_pic => user[:profile_pic]
          }
        end
    end

    def self.get_email(uid)
        user = User.where(uid: uid).first
        if user.nil?
          nil
        end
        user[:email]
    end


  def cosine_similarity(vec1, vec2):
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

  def recommend_courses(top_n_students: 5, top_n_courses: 5)
      all_course_ids = Course.pluck(:id)
      my_courses_vector = all_course_ids.map { |id| self.courses.exists?(id) ? 1 : 0 }
      other_users = User.where.not(id: self.id)


      similarities = other_users.each_with_object({}) do |user, memo|

          other_user_courses_vector = all_course_ids.map { |id| user.courses.exists?(id) ? 1 : 0 }
    
          memo[user.id] = cosine_similarity(my_courses_vector, other_user_courses_vector)
      end

      top_users = similarities.sort_by { |_user_id, similarity| -similarity }.map(&:first).first(top_n_students)

      recommended_course_ids = CourseEnrollment
                              .where(user_id: top_users)
                              .where.not(course_id: my_courses)
                              .group(:course_id)
                              .order('COUNT(user_id) DESC')
                              .limit(top_n_courses)
                              .pluck(:course_id)

      Course.where(id: recommended_course_ids)
  end
end
