class Review < ApplicationRecord
    belongs_to :hiker
    belongs_to :trail

    validates :text, presence: true
    validates :hiker_id, uniqueness: {scope: :trail_id, message: "Review has already been written"}

    def username
        self.hiker.username
    end

end
