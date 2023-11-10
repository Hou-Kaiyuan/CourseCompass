class CourseHistory < ActiveRecord::Migration
  def change
    create_table :course_enrollments do |t|
      t.integer :user, foreign_key: true
      t.string :course, foreign_key: true 
      t.integer :year
      t.string :grade

      t.timestamps
    end
  end
end
