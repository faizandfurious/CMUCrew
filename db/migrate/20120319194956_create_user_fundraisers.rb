class CreateUserFundraisers < ActiveRecord::Migration
  def change
    create_table :user_fundraisers do |t|
      t.integer :user_id
      t.integer :fundraiser_id

      t.timestamps
    end
  end
end
