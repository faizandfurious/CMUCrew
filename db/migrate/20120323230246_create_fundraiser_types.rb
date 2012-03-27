class CreateFundraiserTypes < ActiveRecord::Migration
  def change
    create_table :fundraiser_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
