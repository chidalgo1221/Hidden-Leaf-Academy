class CreateCohorts < ActiveRecord::Migration[5.2]
  def up
    create_table :cohorts do |t|
      t.string :name
      t.string :start_date
      t.string :end_date
      t.string :intructor_name
      t.string :student_name
    end
  end
  def down
    drop_table :cohorts
  end
end

