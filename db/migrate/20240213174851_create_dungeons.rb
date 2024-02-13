class CreateDungeons < ActiveRecord::Migration[7.0]
  def change
    create_table :dungeons do |t|
      t.string :name
      t.integer :modulation
      t.references :kind, null: false, foreign_key: true

      t.timestamps
    end
  end
end
