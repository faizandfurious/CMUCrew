class CreateWorkoutTypes < ActiveRecord::Migration
  def change
    create_table :workout_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
