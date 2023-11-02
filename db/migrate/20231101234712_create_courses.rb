# db/migrate/[timestamp]_create_courses.rb
class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_number, null: false
      t.string :course_title
      t.string :offering_term, null: false
      t.boolean :midterm, default: false # 0: no midterm, 1: midterm
      t.boolean :project, default: true # 0: no project, 1: project
      t.string :instructor
      t.string :time
      t.string :days
      t.string :website

      t.timestamps
    end
  end
end
