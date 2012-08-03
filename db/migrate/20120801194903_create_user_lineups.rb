class CreateUserLineups < ActiveRecord::Migration
  def change
    create_table :user_lineups do |t|
      t.integer :user_id
      t.integer :lineup_id
      t.string :seat

      t.timestamps
    end
  end
end
