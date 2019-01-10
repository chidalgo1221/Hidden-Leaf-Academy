class CreateStudents < ActiveRecord::Migration[5.2]
  def up
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :education_level
    end
  end
  def down
    drop_table :students
  end
end
