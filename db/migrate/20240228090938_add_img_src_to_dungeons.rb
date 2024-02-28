class AddImgSrcToDungeons < ActiveRecord::Migration[7.0]
  def change
    add_column :dungeons, :imgSrc, :string
  end
end
