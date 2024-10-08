class Character < ApplicationRecord
    has_many :rankings, dependent: :destroy
    has_many :dungeons, through: :rankings
    
    validates :name, presence: true
    validates :name, length: {minimum: 3, maximum: 25}
    validates :level, presence: true
    validates :level, numericality: true
    
    validates :level, numericality: { only_integer: true }
    validates :level, inclusion: { in: (1..230) }
    validates :total_chest, numericality: { only_integer: true }

    belongs_to :character_class
    belongs_to :user
end
