class Review < ApplicationRecord
    belongs_to :hiker
    belongs_to :trail

    validates :text, length: { minimum: 10, maximum: 200 }
end
