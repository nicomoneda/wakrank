class AddCharacterClassToCharacters < ActiveRecord::Migration[7.0]
  def change
    add_reference :characters, :character_class, null: false, foreign_key: true
  end
end
