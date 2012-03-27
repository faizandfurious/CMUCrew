class CreateFundraisers < ActiveRecord::Migration
  def change
    create_table :fundraisers do |t|
      t.string :name
      t.integer :fundraiser_type_id
      t.date :event_date
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
