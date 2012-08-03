class AddCapacityToFundraisers < ActiveRecord::Migration
  def change
    add_column :fundraisers, :capacity, :integer

  end
end
