class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.text :location
      t.datetime :date

      t.timestamps
    end
  end
end
