class Ranking < ApplicationRecord
  belongs_to :character
  belongs_to :dungeon

  validates :stasis, numericality: { only_integer: true }
  validates :rank, numericality: { only_integer: true }
  
  validates :stasis, inclusion: { in: (1..10) }
  validates :rank, numericality: { greater_than_or_equal_to: 1 }
end
