class Game < ApplicationRecord
    belongs_to :creator
    validates :title, presence: true, length: { minimum: 3, maximum: 10000}
    # validates :publisher, presence: true, length: { minimum: 3, maximum: 10000}
    # validates :publish_date, presence: true, length: { minimum: 3, maximum: 10000}
    
end