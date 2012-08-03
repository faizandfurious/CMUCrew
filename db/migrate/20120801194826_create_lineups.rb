class CreateLineups < ActiveRecord::Migration
  def change
    create_table :lineups do |t|
      t.integer :boat_id
      t.string :name

      t.timestamps
    end
  end
end
