class CreateCourseCompass < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.integer :offering_term # 0: fall, 1: spring, 2: both
      t.boolean :midterm, default: false # 0: no midterm, 1: midterm
      t.boolean :project, default: false # 0: no project, 1: project
      t.string :instructor
      t.string :website
    end

    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :oauth_token
      t.integer :oauth_expires_at
      t.string :email
      t.string :major
      t.string :first_name
      t.string :last_name
      t.string :profile_pic
    end  
  end
end
