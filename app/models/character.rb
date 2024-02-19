class Character < ApplicationRecord
    has_many :rankings, dependent: :destroy
    has_many :dungeons, through: :rankings
    
    validates :name, presence: true
    validates :level, presence: true
    validates :level, numericality: true
    
    validates :level, numericality: { only_integer: true }
    validates :level, inclusion: { in: (1..230) }
end
