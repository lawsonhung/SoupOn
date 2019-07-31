class Soup < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    validates :name, :ingredients, :img_url, presence: true
    
end
