class Favorite < ApplicationRecord
    belongs_to :trail
    belongs_to :hiker

    validates :hiker_id, uniqueness: {scope: :trail_id, message: "Trail has already been favorited"}

end
