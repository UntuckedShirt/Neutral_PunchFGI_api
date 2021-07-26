class Creator < ApplicationRecord
    has_many :games
    validates :name, presence: true, length: { minimum: 3, maximum: 1000}
end

