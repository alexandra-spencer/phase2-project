class Hiker < ApplicationRecord
    has_many :favorites
    has_many :trails, through: :favorites
    has_many :reviews

    has_secure_password

    validates :name, presence: true
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :password, presence: true
    validates :password, length: { in: 6..12, message: "Should be between 6-12 characters long" }
end
