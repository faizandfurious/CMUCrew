class AddTotalCountToFundraisers < ActiveRecord::Migration
  def change
    add_column :fundraisers, :total_count, :integer

  end
end
