class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.string :name
      t.string :boat_type_id
      t.string :color
      t.string :model

      t.timestamps
    end
  end
end
