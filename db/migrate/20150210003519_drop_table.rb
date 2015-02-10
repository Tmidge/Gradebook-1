class DropTable < ActiveRecord::Migration
  def change
    drop_table(:grades)
    create_table :achievements do |t|
      t.integer :points
      t.string :achievement_name

      t.timestamps null: false
    end
    create_table :achievements_students, :id => false do |t|
      t.integer :achievement_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
