class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.date :date
      t.time :time
      t.integer :workout_type_id
      t.string :location

      t.timestamps
    end
  end
end