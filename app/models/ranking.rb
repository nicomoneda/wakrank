class Ranking < ApplicationRecord
  belongs_to :character
  belongs_to :dungeon

  validates :stasis, numericality: { only_integer: true }, unless: :isBreach?
  validates :stasis, inclusion: { in: (1..10) }, unless: :isBreach?

  validates :rank, numericality: { only_integer: true }, if: :isBreach?
  validates :rank, numericality: { greater_than_or_equal_to: 1 }, if: :isBreach?

  private
  def isBreach?
    return if (dungeon.kind.name == "Brèche Dimensionnelle" || dungeon.kind.name == "Brèche Dimensionnelle Ultime" || dungeon.kind.name == "Boss Ultime à Score")
  end
end
