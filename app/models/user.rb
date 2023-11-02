require 'bcrypt'

class User < ActiveRecord::Base
  has_secure_password

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
end
