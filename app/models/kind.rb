class Kind < ApplicationRecord
    has_many :dungeons

    validates :name, presence: true
end
