class CreateRaceLineups < ActiveRecord::Migration
  def change
    create_table :race_lineups do |t|
      t.integer :race_id
      t.integer :lineup_id

      t.timestamps
    end
  end
end
