class Dungeon < ApplicationRecord
  belongs_to :kind

  has_many :rankings, dependent: :destroy
  has_many :characters, through: :rankings

  validates :name, presence: true
  validates :modulation, presence: true
  validates :modulation, numericality: true
  
  validates :modulation, numericality: { only_integer: true }
  validates :modulation, inclusion: { in: (1..230) }
end
