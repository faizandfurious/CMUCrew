class CreateRowers < ActiveRecord::Migration
  def change
    create_table :rowers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :weight
      t.integer :height
      t.string :rowing_side
      t.string :email
      t.string :phone
      t.string :year
      t.string :major

      t.timestamps
    end
  end
end
