# db/migrate/[timestamp]_create_courses.rb
class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, null: false
      t.text :description
      t.integer :offering_term, default: 2 # 0: fall, 1: spring, 2: both
      t.boolean :midterm, default: 0 # 0: no midterm, 1: midterm
      t.boolean :project, default: 1 # 0: no project, 1: project
      t.string :instructor
      t.string :website

      t.timestamps
    end
  end
end
