class AddFundraiserCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fundraiser_count, :integer

  end
end
