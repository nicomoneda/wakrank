class CreateRankings < ActiveRecord::Migration[7.0]
  def change
    create_table :rankings do |t|
      t.integer :stasis
      t.integer :rank
      t.references :character, null: false, foreign_key: true
      t.references :dungeon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
