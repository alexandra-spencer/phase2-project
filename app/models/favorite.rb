class Favorite < ApplicationRecord
    belongs_to :trail
    belongs_to :hiker

    validates :hiker_id, uniqueness: {scope: :trail_id, message: " has already favorited this trail!"}

end
