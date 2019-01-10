class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :total_hours 
    end
  end
  def down
    drop_table :courses
  end
end
