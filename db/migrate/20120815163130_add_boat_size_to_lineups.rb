class AddBoatSizeToLineups < ActiveRecord::Migration
  def change
    add_column :lineups, :boat_size, :string

  end
end
