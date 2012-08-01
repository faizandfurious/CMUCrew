class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :name
      t.integer :workout_type_id
      t.string :location
      t.datetime :date

      t.timestamps
    end
  end
end
