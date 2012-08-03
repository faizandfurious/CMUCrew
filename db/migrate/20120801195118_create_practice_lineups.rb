class CreatePracticeLineups < ActiveRecord::Migration
  def change
    create_table :practice_lineups do |t|
      t.integer :practice_id
      t.integer :lineup_id

      t.timestamps
    end
  end
end
