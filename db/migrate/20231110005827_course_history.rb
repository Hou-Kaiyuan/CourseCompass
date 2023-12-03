class CourseHistory < ActiveRecord::Migration
  def change
    create_table :course_enrollments do |t|
      t.string :uid, foreign_key: true
      t.string :course_id, foreign_key: true 
      t.string :year
      t.string :grade

      t.timestamps
    end
  end
end
