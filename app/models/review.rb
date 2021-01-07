class Review < ApplicationRecord
    belongs_to :hiker
    belongs_to :trail

    validates :text, presence: true
    validates :hiker_id, uniqueness: {scope: :trail_id, message: "has already written a review for this trail"}

    def username
        self.hiker.username
    end


end
