class AddTotalChestToCharacters < ActiveRecord::Migration[7.0]
  def change
    add_column :characters, :total_chest, :integer
  end
end
