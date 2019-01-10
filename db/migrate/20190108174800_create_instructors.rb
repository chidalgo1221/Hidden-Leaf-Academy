class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :salary
      t.string :education_level
    end
  end
  def down 
    drop_table :instructors
  end
end
