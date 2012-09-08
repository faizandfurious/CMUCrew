class AddDescriptionToPractices < ActiveRecord::Migration
  def change
    add_column :practices, :description, :text

  end
end
